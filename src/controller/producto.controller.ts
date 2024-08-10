import { Body, Controller, Delete, Get, HttpCode, HttpException, HttpStatus, Param, ParseIntPipe, Post, Put } from '@nestjs/common';
import Producto from 'src/model/producto.model';
import tipoDeProducto from 'src/model/tipodeproducto';
import { ProductoService } from 'src/service/producto.service';

@Controller('/api/producto')
export class ProductoController {
  constructor(private readonly productoService: ProductoService) { }

  @Get()
  async verProductos(): Promise<Producto[]> {
    return await this.productoService.verProducto();
  }

  @Get('/tipoDeProducto')
  async verTipoDeProductos(): Promise<tipoDeProducto[]> {
    return await this.productoService.verTipoDeProductos();
  }

  @Get(':grupo')
  async obtenerProductosPorGrupo(@Param('grupo') grupo: number): Promise<Producto[]> {
    return await this.productoService.verProductoGrupo(grupo);
  }

  @Delete(':productoId')
  async eliminarProducto(@Param('productoId', ParseIntPipe) productoId: number) {
    await this.productoService.eliminarProducto(productoId);
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
