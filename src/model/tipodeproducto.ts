import { IsIn, IsInt, IsOptional, IsString} from "class-validator"

class tipoDeProducto {
    @IsInt()
    tipoDeProductoId: number;
    
    @IsString()
    grupo: string;
}

export default tipoDeProducto
