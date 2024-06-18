import { Body, Controller, HttpCode, HttpException, HttpStatus, ParseFilePipeBuilder, Post, UploadedFile, UseInterceptors } from '@nestjs/common';
import { ImagenService } from 'src/service/imagen.service';
import { FileInterceptor } from '@nestjs/platform-express';

@Controller('/api/imagen')
export class ImagenController {
  constructor(private readonly imagenService: ImagenService) { }


  @Post('/upload')
  @UseInterceptors(FileInterceptor('file'))
  async uploadImage(
    @UploadedFile(
      new ParseFilePipeBuilder()
        .addFileTypeValidator({
          fileType: /(jpg|jpeg|png|webp)$/,
        })
        .addMaxSizeValidator({
          maxSize: 10240000,
          message: 'La imagen no puede superar el 10 MB',
        })
        .build({ errorHttpStatusCode: HttpStatus.UNPROCESSABLE_ENTITY }),
    )
    file: Express.Multer.File, 
    @Body('productoId') productoId: number,
  ) {
      return this.imagenService.upload(file, productoId);
    }
  }
