import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { DatabaseService } from './db.service';
import { ResultSetHeader, RowDataPacket } from 'mysql2';
import compraQueries from './queries/compra.queries';
import Compra from 'src/model/compra.model';


@Injectable()
export class CompraService {
  constructor(
    private dbService: DatabaseService) {}

    async verCompra(): Promise<any[]> {
        const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
          compraQueries.selectCompras,
          [],
        );
        const resultProducto = resultQuery.map((rs: RowDataPacket) => {
          return {
            compraId: rs['compraId'],
            usuarioId: rs['usuarioId'],
            nombre: rs['nombre'],
            email: rs['email'],
            fecha: rs['fecha'],
            productoId: rs['productoId'],
            modelo: rs['modelo'],
            precio: rs['precio'],
          };
        });
        return resultProducto;
      }

      async registroVenta(compra: Compra) { 
        await this.dbService.executeQuery(
          compraQueries.insertCompra,
          [compra.productoId, compra.usuarioId]
        )
      }

      async restarStock(productoId: number) {
        const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
          compraQueries.restarStock,
          [productoId]
        )
        if (resultQuery.affectedRows === 0) {
          throw new HttpException('No hay suficiente stock', HttpStatus.FORBIDDEN);
        }
      }
  }
