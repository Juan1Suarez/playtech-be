import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { DatabaseService } from './db.service';
import { RowDataPacket } from 'mysql2/promise';
import productoQueries from './queries/producto.queries';
import Producto from 'src/model/producto.model';


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
}