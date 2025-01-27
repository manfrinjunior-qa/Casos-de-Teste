encoding: UTF-8
#language: pt

Sendo um usuário do sistema X
Quero completar o Login
Para que eu possa ter acesso às funcionalidade dentro do sistema.

Funcionalidade: Tela de Login

Cenário: Login realizado com Sucesso
	Dado que o usuário "admin" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
	E na opção "Username" preenche o login "Admin"
	E na opção "Password" preenche a senha "admin123"
	E o Login/Senha estiver correto 
	Quando clicar no botão "LOGIN"
	Então o acesso será realizado com sucesso.
	E será emcaminhado direto para o menu "Dashboard"

Cenário: Login invalido 
	Dado que o usuário "admin" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
	E na opção "Username" preenche o login "admin"
	E na opção "Password" preenche a senha "admin1234" 
	E o Login/Senha estiver incorreto 
	Quando clicar no botão "LOGIN"
	Então o acesso não será realizado.
	E uma mensagem "Invalid credentials" será informado na tela.


Cenário: Login com campos vazios
  Dado que o usuário "admin" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
  E não preencha os campos "Username" e "Password"
  Quando clicar no botão "LOGIN"
  Então o acesso não será realizado.
  E uma mensagem "Required" será exibida abaixo dos campos obrigatórios.

Cenário: Login com usuário inexistente
  Dado que o usuário "teste123" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
  E na opção "Username" preenche o login "teste123"
  E na opção "Password" preenche a senha "admin123"
  E o usuário não existir no sistema
  Quando clicar no botão "LOGIN"
  Então o acesso não será realizado.
  E uma mensagem "Invalid credentials" será informada na tela.

Cenário: Login com senha em branco
  Dado que o usuário "admin" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
  E na opção "Username" preenche o login "Admin"
  E não preencha a opção "Password"
  Quando clicar no botão "LOGIN"
  Então o acesso não será realizado.
  E uma mensagem "Required" será exibida abaixo do campo "Password".

Cenário: Login com usuário em branco
  Dado que o usuário "admin" acesse a plataforma "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
  E não preencha a opção "Username"
  E na opção "Password" preenche a senha "admin123"
  Quando clicar no botão "LOGIN"
  Então o acesso não será realizado.
  E uma mensagem "Required" será exibida abaixo do campo "Username".

Cenário: Logout após login bem-sucedido
  Dado que o usuário "admin" realizou login com sucesso na plataforma
  Quando clicar na opção de "Logout"
  Então o usuário será deslogado do sistema
  E será redirecionado para a tela de login.

Cenário: Tentativas excessivas de login inválido
  Dado que o usuário "admin" tente realizar login com uma senha incorreta mais de 5 vezes consecutivas
  Quando clicar no botão "LOGIN"
  Então o acesso será bloqueado temporariamente
  E uma mensagem "Your account has been locked due to multiple failed login attempts. Please try again later." será exibida.

