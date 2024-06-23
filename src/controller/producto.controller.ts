import { Body, Controller, Delete, Get, HttpCode, HttpException, HttpStatus, Param, ParseIntPipe, Post, Put } from '@nestjs/common';
import Producto from 'src/model/producto.model';
import { ProductoService } from 'src/service/producto.service';

@Controller('/api/producto')
export class ProductoController {
  constructor(private readonly productoService: ProductoService) { }

  @Get()
  async verProductos(): Promise<Producto[]> {
    return await this.productoService.verProducto();
  }

  @Delete(':productoId')
  async eliminarProducto(@Param('productoId', ParseIntPipe) usuarioId: number) {
    await this.productoService.eliminarProducto(usuarioId);
  }
  
  @Post()
  async crearProducto(@Body() body: Producto) {
    return await this.productoService.crearProducto(body);
  }

  @Put(':productoId')
  async modificarProducto(@Param('productoId', ParseIntPipe) productoId: number, @Body() body: Producto ){
    body.productoId = productoId;
    await this.productoService.modificarProducto(body)
  }
}
