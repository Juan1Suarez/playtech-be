import { IsInt, IsOptional, IsString, isString} from "class-validator"

class Producto {
    @IsInt()
    @IsOptional()
    productoId: number;

    @IsString()
    @IsOptional()
    tipoDeProducto: string;

    @IsString()
    @IsOptional()
    modelo: string;

    @IsInt()
    @IsOptional()
    precio: number;

    @IsString()
    @IsOptional()
    foto: string;

 
    @IsString()  
    @IsOptional() 
    color: string;

     
    @IsString()  
    @IsOptional() 
    descripcion: string;

 
    @IsInt()   
    @IsOptional()
    stock: number;

    @IsString()
    @IsOptional()   
    fotoDelete: string;

    @IsString()
    @IsOptional()   
    fotoDisplay: string;

}

export default Producto
