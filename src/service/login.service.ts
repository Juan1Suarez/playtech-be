import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { DatabaseService } from './db.service';
import { RowDataPacket } from 'mysql2/promise';
import { JwtService } from '@nestjs/jwt';
import usuarioQueries from './queries/usuario.queries';
import * as bcrypt from 'bcrypt';


@Injectable()
export class LoginService {
  salt: string = '$2a$08$W59jWcwio1TiLx4A8iRyTO';
  constructor(
    private dbService: DatabaseService,
    private jwtService: JwtService,
  ) {}

  async generateHash(pw: string) {
    const hash = await bcrypt.hash(pw, this.salt);
    return hash;
  }

  async login(user: any) {
    const resultQuery: RowDataPacket[] = await this.dbService.executeSelect(
      usuarioQueries.selectByEmail,
      [user.email],
    );
     await this.generateHash(user.password)
    if (resultQuery.length === 0) {
      throw new HttpException('Acceso denegado', HttpStatus.UNAUTHORIZED);
    }
    const dbUser = {
      email: resultQuery[0].email,
      password: resultQuery[0].password,
      rolId: resultQuery[0].rolId,
      usuarioId: resultQuery[0].usuarioId,
      nombre: resultQuery[0].nombre,
      activo: resultQuery[0].activo,
    };

    //CONTRASEÑA TIENE QUE ESTAR HASHEADA
    const isValidPassword =await bcrypt.compare(
      user.password,
      dbUser.password,
    ); 

    if (!isValidPassword) {
      throw new HttpException('Acceso no autorizado', HttpStatus.UNAUTHORIZED);

    }
    return this.getAccessToken(dbUser);
  }

  getAccessToken(user: any) {
    const payload = { email: user.email, rolId: user.rolId, usuarioId: user.usuarioId, nombre: user.nombre , activo: user.activo};
    return {     
      email: user.email,
      rolId: user.rolId,
      accessToken: this.jwtService.sign(payload),
      usuarioId: user.usuarioId,
      nombre: user.nombre,
      activo: user.activo
    };
  }
}