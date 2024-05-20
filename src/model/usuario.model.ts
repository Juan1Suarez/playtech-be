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
    activo: number;

    @IsInt()
    rolId: number;
}

export default Usuario
