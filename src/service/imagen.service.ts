import { Injectable } from '@nestjs/common';
import axiosInstance from 'src/axios/config';

@Injectable()
export class ImagenService {
  private readonly key: string;
  constructor() {
    this.key = '17fbcc637a3d36dc6fdc31e2a601ca94';//chequear si sirve sin esto
  }

  async upload(file: Express.Multer.File) {
    const formdata: FormData = new FormData();
    formdata.append('image', new Blob([Buffer.from(file.buffer)]));
    formdata.append('key', this.key);
    formdata.append('name', 'nombre'); //cambiar nombre
    const response = await axiosInstance.post('/upload', formdata);
    //ejecutar querie update
    return response.data;
  }
}