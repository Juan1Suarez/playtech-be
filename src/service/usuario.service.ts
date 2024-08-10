import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import Usuario from 'src/model/usuario.model';
import { DatabaseService } from './db.service';
import usuarioQueries from './queries/usuario.queries';
import { ResultSetHeader, RowDataPacket } from 'mysql2/promise';
import * as bcrypt from 'bcrypt';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class UsuarioService {
  salt: string = '$2a$08$W59jWcwio1TiLx4A8iRyTO';
  constructor(
    private dbService: DatabaseService,
    private jwtService: JwtService,
  ) {}

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

  async crearUsuario(usuario: any) {
    const emailExistente: RowDataPacket[] = await this.dbService.executeSelect(
      usuarioQueries.selectByEmailExistente,
      [usuario.email] 
    )

    if (emailExistente.length > 0) {
      if (emailExistente[0].activo === 0) {
      const encriptedPassword = await this.generateHash(usuario.password);

      await this.dbService.executeQuery(
        usuarioQueries.activarUsuario,
        [usuario.nombre, encriptedPassword, emailExistente[0].usuarioId]
      );
      return;
      } else {
        throw new HttpException('Email ya existente', HttpStatus.FORBIDDEN);
      }
    }

    const encriptedPassword = await this.generateHash(usuario.password);
    const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
      usuarioQueries.insert,
      [usuario.nombre, usuario.email, encriptedPassword, usuario.activo, usuario.rolId],
    );

    const resultSelect: RowDataPacket[] = await this.dbService.executeSelect(
      usuarioQueries.selectById,
      [resultQuery.insertId],
    );

    const nuevoUsuario = {
      email: resultSelect[0].email,
      password: resultSelect[0].password,
      rolId: resultSelect[0].rolId,
    };

    return this.getAccessToken(nuevoUsuario);
  }

  getAccessToken(user: any) {
    const payload = { email: user.email, rolId: user.rolId };
    return {   
      email: user.email,
      rolId: user.rolId,
      accessToken: this.jwtService.sign(payload),
    };
  }

  async eliminarUsuario(usuarioId: number) {
    const resultQuery: ResultSetHeader = await this.dbService.executeQuery(
      usuarioQueries.delete,
      [usuarioId],
    );

    if (resultQuery.affectedRows === 0) {
      throw new HttpException('Usuario no encontrado', HttpStatus.NOT_FOUND);
    }
  }
}