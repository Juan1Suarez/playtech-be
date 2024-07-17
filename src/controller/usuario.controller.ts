import {
  Body,
  Controller,
  Delete,
  Get,
  HttpCode,
  HttpStatus,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Req,
  Res,
} from '@nestjs/common';
import Usuario from 'src/model/usuario.model';
import { UsuarioService } from 'src/service/usuario.service';

@Controller('/api/usuarios')
export class UsuarioController {
  constructor(private readonly usuarioService: UsuarioService) {}

  @Get()
  async verUsuarios(): Promise<Usuario[]> {
    return await this.usuarioService.verUsuarios();
  }

  @Post()
  async crearUsuario(@Body() body: { email: string; password: string }) {
    return await this.usuarioService.crearUsuario(body);
  }

  @Put(':usuarioId')
  async eliminarUsuario(@Param('usuarioId', ParseIntPipe) usuarioId: number) {
    await this.usuarioService.eliminarUsuario(usuarioId);
  }
}