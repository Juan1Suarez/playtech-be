import { Injectable } from '@nestjs/common';
import axiosInstance from 'src/axios/config';
import { DatabaseService } from './db.service';
import productoQueries from './queries/producto.queries';

@Injectable()
export class ImagenService {
  private readonly key: string;

  constructor(
    private dbService: DatabaseService,
  ) {
    this.key = '17fbcc637a3d36dc6fdc31e2a601ca94';
  }

  async upload(file: Express.Multer.File, productoId: number) {
    const formdata: FormData = new FormData();
    formdata.append('image', new Blob([Buffer.from(file.buffer)]));
    formdata.append('key', this.key);
    formdata.append('name', productoId.toString());
    formdata.append('productoId', productoId.toString());
    
    const response = await axiosInstance.post('/upload', formdata);
    const responseData = response.data.data;
    const foto = responseData.url
    const fotoDelete = responseData.delete_url
    const fotoDisplay = responseData.display_url

    await this.dbService.executeQuery(
      productoQueries.updateFoto,
      [fotoDelete, foto, fotoDisplay, productoId],
    );

    return response.data;
  }
}