import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import Usuario from 'src/model/usuario.model';
import { DatabaseService } from './db.service';
import usuarioQueries from './queries/usuario.queries';
import { ResultSetHeader, RowDataPacket } from 'mysql2/promise';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsuarioService {
  salt: string = '$2a$08$W59jWcwio1TiLx4A8iRyTO';
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

  async generateHash(pw: string) {
    const hash = await bcrypt.hash(pw, this.salt);
    return hash;
  }



  async crearUsuario(usuario: Usuario): Promise<Usuario> {
    const encriptedPassword = await this.generateHash(usuario.password);
    const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
      usuarioQueries.insert,
      [usuario.nombre, usuario.email, encriptedPassword,usuario.activo ,usuario.rolId ],
    );
    return {
      usuarioId: resultQuery.insertId,
      nombre: usuario.nombre,
      email: usuario.email,
      password: encriptedPassword,
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


