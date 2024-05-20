import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsuarioController } from './controller/usuario.controller';
import { DatabaseService } from './service/db.service';
import { UsuarioService } from './service/usuario.service';


@Module({
  imports: [],
  controllers: [AppController, UsuarioController],
  providers: [AppService, DatabaseService, UsuarioService ],
})
export class AppModule {}
