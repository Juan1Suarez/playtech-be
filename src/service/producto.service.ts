import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { DatabaseService } from './db.service';
import { ResultSetHeader, RowDataPacket } from 'mysql2/promise';
import productoQueries from './queries/producto.queries';
import Producto from 'src/model/producto.model';
import tipoDeProducto from 'src/model/tipodeproducto';


@Injectable()
export class ProductoService {
  constructor(
    private dbService: DatabaseService) {}


    async verProducto(): Promise<Producto[]> {
      const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
        productoQueries.selectAll,
        [],
      );
      const resultProducto = resultQuery.map((rs: RowDataPacket) => {
        return {
          productoId: rs['productoId'],
          tipoDeProductoId: rs['tipoDeProductoId'],
          tipoDeProducto: rs['tipoDeProducto'],
          modelo: rs['modelo'],
          precio: rs['precio'],
          foto: rs['foto'],
          color: rs['color'],
          descripcion: rs['descripcion'],
          stock: rs['stock'],
          fotoDelete: rs ['fotoDelete'],
          fotoDisplay: rs['fotoDisplay'],
        };
      });
      return resultProducto;
    }
    
    async verTipoDeProductos(): Promise<tipoDeProducto[]> {
      const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
        productoQueries.selectByTipoDeProducto,
        [],
      );
      const resultProducto = resultQuery.map((rs: RowDataPacket) => {
        return {
          tipoDeProductoId: rs['tipoDeProductoId'],
          grupo: rs['grupo'],
        };
      });
      return resultProducto;
    }

    async verProductoGrupo(grupo: number): Promise<Producto[]> {
      const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
        productoQueries.selectByGrupo,
        [grupo],
      );
      return resultQuery.map((rs: RowDataPacket) => ({
        productoId: rs['productoId'],
        tipoDeProductoId: rs['tipoDeProductoId'],
        tipoDeProducto: rs['tipoDeProducto'],
        modelo: rs['modelo'],
        precio: rs['precio'],
        foto: rs['foto'],
        color: rs['color'],
        descripcion: rs['descripcion'],
        stock: rs['stock'],
        fotoDelete: rs['fotoDelete'],
        fotoDisplay: rs['fotoDisplay'],
      }));
    }

    async eliminarProducto(productoId: number ){
      const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
        productoQueries.delete,
        [productoId],
      );
  
      if (resultQuery.affectedRows === 0) {
        throw new HttpException('producto no encontrado', HttpStatus.NOT_FOUND);
      }
    }

    async crearProducto(producto: Producto){ 
       await this.dbService.executeQuery(
        productoQueries.insert,
        [producto.tipoDeProducto, producto.modelo ,  producto.precio,  producto.color , producto.descripcion, producto.stock ],
      );
    }

    async modificarProducto(producto: Producto) {
       await this.dbService.executeQuery(
        productoQueries.updateProducto,
        [producto.tipoDeProducto, producto.modelo, producto.precio, producto.color, producto.descripcion, producto.stock, producto.productoId],
      );
    }
  }