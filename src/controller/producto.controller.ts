import { Body, Controller, Get, HttpCode, HttpException, HttpStatus, Post } from '@nestjs/common';
import Producto from 'src/model/producto.model';
import { ProductoService } from 'src/service/producto.service';

@Controller('/api/producto')
export class ProductoController {
  constructor(private readonly productoService: ProductoService) { }

  @Get()
  async verProductos(): Promise<Producto[]> {
    return await this.productoService.verProducto();
  }
}
