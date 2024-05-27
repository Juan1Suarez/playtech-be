import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsuarioController } from './controller/usuario.controller';
import { DatabaseService } from './service/db.service';
import { UsuarioService } from './service/usuario.service';
import { LoginController } from './controller/login.controller';
import { LoginService } from './service/login.service';
import { JwtModule, JwtService } from '@nestjs/jwt';


@Module({
  imports: [ JwtModule.register({
    secret: '$2a$08$W59jWcwio1TiLx4A8iRyTO',
    signOptions: {expiresIn: '1h'},
  })
  ],
  controllers: [AppController, UsuarioController, LoginController],
  providers: [AppService, DatabaseService, UsuarioService, LoginService ],
})
export class AppModule {}
