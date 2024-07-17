import { Body, Controller, Delete, Get, HttpCode, HttpException, HttpStatus, Param, ParseIntPipe, Post, Put } from '@nestjs/common';
import Compra from 'src/model/compra.model';
import { CompraService } from 'src/service/compra.service';

@Controller('/api/compra')
export class CompraController {
  constructor(private readonly compraService: CompraService) { }

  @Get()
  async verCompras(): Promise<any[]> {
    return await this.compraService.verCompra();
  }

  @Post()
  async registroVenta (@Body() body: Compra ) {
    return await this.compraService.registroVenta(body);
  }

  @Put(':productoId')
  async restarStock (@Param('productoId') productoId: number) {
    await this.compraService.restarStock(productoId);
  }
}
