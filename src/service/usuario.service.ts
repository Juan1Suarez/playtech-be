import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import Usuario from 'src/model/usuario.model';
import { DatabaseService } from './db.service';
import usuarioQueries from './queries/usuario.queries';
import { ResultSetHeader, RowDataPacket } from 'mysql2/promise';

@Injectable()
export class UsuarioService {
  constructor(private dbService: DatabaseService) {}

  async verUsuarios(): Promise<Usuario[]> {
    const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
      usuarioQueries.selectAll,
      [],
    );

    const resultUsuario = resultQuery.map((rs: RowDataPacket) => {
      return {
        usuarioId: rs['usuarioId'],
        nombre: rs['nombre'],
        email: rs['email'],
        password: rs['password'],
        activo: rs['activo'],
        rolId: rs['rolId'],
      };
    });
    return resultUsuario;
  }

  async crearUsuario(usuario: Usuario): Promise<Usuario> {
    const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
      usuarioQueries.insert,
      [usuario.nombre, usuario.email, usuario.password,usuario.activo ,usuario.rolId ],
    );
    return {
      usuarioId: resultQuery.insertId,
      nombre: usuario.nombre,
      email: usuario.email,
      password: usuario.password,
      activo: usuario.activo,
      rolId: usuario.rolId,
    };
  }

  async eliminarUsuario(usuarioId: number): Promise<void> {
    const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
      usuarioQueries.delete,
      [usuarioId],
    );

    if (resultQuery.affectedRows === 0) {
      throw new HttpException('Usuario no encontrado', HttpStatus.NOT_FOUND);
    }
  }
}