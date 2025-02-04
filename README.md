# 🥒 **Modelo de Testes Automatizados com Cucumber**

Este repositório apresenta um modelo prático e reutilizável para implementação de testes automatizados utilizando o Cucumber. Ideal para equipes que desejam adotar o Behavior-Driven Development (BDD) em seus projetos, o modelo inclui cenários prontos, lógica de implementação e instruções detalhadas.
🌟 Visão Geral

    Frameworks Utilizados:
        Cucumber para definição e execução de testes BDD.
        Chai para asserções.

    Objetivos:
        Facilitar a escrita de testes automatizados em linguagem natural.
        Ajudar equipes de QA e desenvolvimento a colaborar de forma mais eficiente.
        Proporcionar um ponto de partida simples e escalável para projetos baseados em BDD.

## 📂 **Estrutura do Projeto**

```modelo-cucumber/
│
├── features/
│   ├── login.feature            # Arquivo contendo cenários de teste (em Gherkin)
│   └── step_definitions/        # Diretório com a lógica dos passos
│       └── loginSteps.js        # Definições de passos para o arquivo login.feature
│
├── reports/                     # Diretório para relatórios gerados
│
├── cucumber.js                  # Arquivo de configuração do Cucumber
├── package.json                 # Configuração do projeto e dependências
└── README.md                    # Documentação do projeto
```

## 🚀 Como Configurar o Ambiente
1️⃣ Clone o Repositório

git clone https://github.com/seu-usuario/modelo-cucumber.git
cd modelo-cucumber

2️⃣ Instale as Dependências

Antes de começar, certifique-se de que você possui o Node.js instalado (recomenda-se a versão 14 ou superior).
Instale as dependências necessárias com o comando:

npm install

3️⃣ Execute os Testes

Depois de configurar o ambiente, basta rodar o seguinte comando para executar os testes:

npm test

Se tudo estiver configurado corretamente, os resultados dos testes serão exibidos no terminal.
## 📝 Como Personalizar os Cenários

Os cenários de teste são escritos no diretório features/ em arquivos .feature.
Segue um exemplo simples de um cenário de login:

```
Feature: Login de Usuário
  Para acessar o sistema como um usuário registrado,
  Quero fazer login com meu nome de usuário e senha.

  Scenario: Login bem-sucedido
    Given que eu estou na página de login
    When eu insiro meu usuário "test_user"
    And eu insiro minha senha "secure_password"
    And clico no botão "Login"
    Then eu devo ver a mensagem "Bem-vindo, test_user!"

  Scenario: Falha no login com credenciais inválidas
    Given que eu estou na página de login
    When eu insiro meu usuário "test_user"
    And eu insiro minha senha inválida "wrong_password"
    And clico no botão "Login"
    Then eu devo ver a mensagem "Credenciais inválidas!"
```

Você pode criar novos arquivos .feature para outros fluxos do sistema.
## 🛠️ Como Modificar as Definições de Passos

Os passos são implementados no diretório step_definitions/.
Exemplo do arquivo loginSteps.js:

```
const { Given, When, Then } = require('@cucumber/cucumber');
const { expect } = require('chai');

let mensagem = '';
const mockLogin = (usuario, senha) => {
  if (usuario === 'test_user' && senha === 'secure_password') {
    mensagem = 'Bem-vindo, test_user!';
  } else {
    mensagem = 'Credenciais inválidas!';
  }
};

Given('que eu estou na página de login', function () {
  mensagem = ''; // Reseta a mensagem
});

When('eu insiro meu usuário {string}', function (usuario) {
  this.usuario = usuario;
});

When('eu insiro minha senha {string}', function (senha) {
  this.senha = senha;
});

When('clico no botão {string}', function (botao) {
  if (botao === 'Login') {
    mockLogin(this.usuario, this.senha);
  }
});

Then('eu devo ver a mensagem {string}', function (mensagemEsperada) {
  expect(mensagem).to.equal(mensagemEsperada);
});
```

Adapte a lógica dos passos para refletir os requisitos de seu projeto.
## 📊 Melhorias Sugeridas

    Integração com CI/CD: Automatize os testes em pipelines usando ferramentas como GitHub Actions ou Jenkins.
    Geração de Relatórios HTML: Adicione uma biblioteca como cucumber-html-reporter para visualizar os resultados em um navegador.
    Cobertura de Testes de API: Inclua cenários para testes de API RESTful, usando bibliotecas como axios ou supertest.

## 🤝 Como Contribuir

    Faça um fork do repositório.
    Crie uma nova branch: git checkout -b feature/sua-feature.
    Envie suas alterações: git push origin feature/sua-feature.
    Abra um Pull Request explicando suas modificações.

## 📄 Licença

Este projeto é licenciado sob a MIT License.
## 💬 Dúvidas ou Sugestões?

Sinta-se à vontade para abrir uma issue no repositório ou entrar em contato!
