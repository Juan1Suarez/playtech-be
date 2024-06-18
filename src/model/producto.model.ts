import { IsInt, IsOptional, IsString, isString} from "class-validator"

class Producto {
    @IsInt()
    @IsOptional()
    productoId: number;

    @IsString()
    tipoDeProducto: string;

    @IsString()
    modelo: string;

    @IsInt()
    precio: number;

    @IsString()
    @IsOptional()
    foto: string;

 
    @IsString()   
    color: string;

     
    @IsString()   
    descripcion: string;

 
    @IsInt()   
    stock: number;

    @IsString()
    @IsOptional()   
    fotoDelete: string;

    @IsString()
    @IsOptional()   
    fotoDisplay: string;

}

export default Producto
