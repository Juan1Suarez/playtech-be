import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsuarioController } from './controller/usuario.controller';
import { DatabaseService } from './service/db.service';
import { UsuarioService } from './service/usuario.service';
import { LoginController } from './controller/login.controller';
import { LoginService } from './service/login.service';
import { JwtModule } from '@nestjs/jwt';
import { JwtMiddlewareGuard } from './middleware/auth-guard';


@Module({
  imports: [ JwtModule.register({
    secret: 'wokdfaojkfawjofjwoafjopwfjaopfwjapofjwoapjfwoj',
    signOptions: {expiresIn: '1h'},
  })
  ],
  controllers: [AppController, UsuarioController, LoginController],
  providers: [AppService, DatabaseService, UsuarioService, LoginService, JwtMiddlewareGuard ],
})
export class AppModule {}
