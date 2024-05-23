import { IsInt, IsOptional, IsString} from "class-validator"

class Usuario {
    @IsInt()
    @IsOptional()
    usuarioId: number;

    @IsString()
    nombre: string;

    @IsString()
    email: string;

    @IsString()
    password: string;

    @IsInt()
    @IsOptional()
    activo: number;

 
    @IsInt()   
    @IsOptional()
    rolId: number;
}

export default Usuario
