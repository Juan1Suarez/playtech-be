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
import { ProductoController } from './controller/producto.controller';
import { ProductoService } from './service/producto.service';


@Module({
  imports: [ JwtModule.register({
    secret: 'wokdfaojkfawjofjwoafjopwfjaopfwjapofjwoapjfwoj',
    signOptions: {expiresIn: '1h'},
  })
  ],
  controllers: [AppController, UsuarioController, LoginController, ProductoController],
  providers: [AppService, DatabaseService, UsuarioService, LoginService, JwtMiddlewareGuard, ProductoService ],
})
export class AppModule {}
