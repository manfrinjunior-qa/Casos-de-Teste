encoding: UTF-8
#language: pt

Sendo um usuário do sistema X
Quero completar o Login
Para que eu possa ter acesso às funcionalidade dentro do sistema.

Funcionalidade: Login
Cenário:Login válido
	Dado que o usuário possui uma conta no sistema
	E ele acesse a página do Login
	E ele preenche seus credenciais válidas
	Quando ele clicar em "Acessar"
	Então ele deverá ser direcionado para a página principal