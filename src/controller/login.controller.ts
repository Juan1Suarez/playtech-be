import { Body, Controller, HttpCode, HttpException, HttpStatus, Post } from '@nestjs/common';
import { LoginService } from 'src/service/login.service';

@Controller('/api/login')
export class LoginController {
  constructor(private readonly loginService: LoginService) { }

  @Post()
  @HttpCode(200)
  async login(@Body() body: { email: string; password: string }) {
    return await this.loginService.login(body);
  }
  
}
