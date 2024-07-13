import { IsIn, IsInt, IsOptional, IsString} from "class-validator"

class Compra {
    @IsInt()
    @IsOptional()
    CompraId: number;

    @IsInt()
    productoId: number;
    
    @IsInt()
    usuarioId: number;
}

export default Compra
