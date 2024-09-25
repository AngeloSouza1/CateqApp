# CateqApp

<div align="justify"> CateqApp é um aplicativo web desenvolvido com Ruby on Rails para gerenciar o cadastro de catequizandos e seus relacionamentos com os catequistas. O sistema permite a criação de fichas cadastrais, o acompanhamento de informações pessoais dos catequizandos e a administração das turmas por parte dos catequistas.</div>

### 💻 Sobre o projeto
---

<div align="justify"> O objetivo do CateqApp é fornecer uma plataforma eficiente para gerenciar informações dos catequizandos de forma organizada e acessível. Catequistas podem gerenciar as fichas dos seus catequizandos e acompanhar seus dados de contato e informações pessoais.

#### 👁️‍🗨️ Funcionalidades Principais

🔹 Criação e gerenciamento de fichas cadastrais: Catequistas podem adicionar e editar fichas de catequizandos.

🔹 Associação de Catequistas e Catequizandos: Cada catequizando pode ser associado a um catequista responsável.

🔹 Sistema de usuários: Autenticação e autorização para diferentes tipos de usuários (Catequistas e Catequizandos).

🔹 Login e Registro: Gerenciamento de usuários com autenticação utilizando Devise.

</div>

#### 🛠 Tecnologias utilizadas

O projeto CateqApp é desenvolvido utilizando as seguintes tecnologias e gems:

🔹 Ruby on Rails: Framework principal para o desenvolvimento do backend e frontend.

🔹 PostgreSQL: Banco de dados utilizado para armazenar as informações dos usuários, fichas cadastrais e associações.

🔹 Devise: Gem utilizada para autenticação de usuários.

🔹 Bootstrap: Framework de CSS utilizado para estilizar a interface do usuário.

🔹 Font Awesome: Utilizado para ícones na interface.

---

### 💡 Veja!


🔹 Imagens dos Perfis

<p align="center">
  <a href="https://github.com/user-attachments/assets/ed185ea6-ca23-4dfa-a44f-1896f2aa2104">
    <img src="https://github.com/user-attachments/assets/ed185ea6-ca23-4dfa-a44f-1896f2aa2104" width="250" height="150" alt="Tela Cadastro" style="margin-right: 10px;">
  </a>
 
  <a href="https://github.com/user-attachments/assets/cba850aa-2d91-4bbe-a72a-bde3db40d433">
    <img src="https://github.com/user-attachments/assets/cba850aa-2d91-4bbe-a72a-bde3db40d433" width="250" height="150" alt="Perfil Usuário" style="margin-right: 10px;">
  </a>
 
  <a href="https://github.com/user-attachments/assets/a2bd3f87-90d9-40e7-ab46-3e972f9175e3">
    <img src="https://github.com/user-attachments/assets/a2bd3f87-90d9-40e7-ab46-3e972f9175e3" width="250" height="150" alt="Gráfico de Acessos">
  </a>
</p>

<p align="center">
  <a href="https://github.com/user-attachments/assets/803acbbb-a00c-49f3-9bcd-791edafbcb33">
    <img src="https://github.com/user-attachments/assets/803acbbb-a00c-49f3-9bcd-791edafbcb33" width="250" height="150" alt="Tela Cadastro" style="margin-right: 10px;">
  </a>
  
  <a href="https://github.com/user-attachments/assets/23111017-08d2-4f0d-a035-2ed9cd139128">
    <img src="https://github.com/user-attachments/assets/23111017-08d2-4f0d-a035-2ed9cd139128" width="250" height="150" alt="Perfil Usuário" style="margin-right: 10px;">
  </a>

  <a href="https://github.com/user-attachments/assets/2b6d5350-287d-410f-a4db-241ee480b26f">
    <img src="https://github.com/user-attachments/assets/2b6d5350-287d-410f-a4db-241ee480b26f" width="250" height="150" alt="Gráfico de Acessos">
  </a>
</p>

<p align="center">
  <a href="https://github.com/user-attachments/assets/fb106957-d214-4f08-bb4f-2e5b37771b1a">
    <img src="https://github.com/user-attachments/assets/fb106957-d214-4f08-bb4f-2e5b37771b1a" width="250" height="150" alt="Tela Cadastro" style="margin-right: 10px;">
  </a>
  
  <a href="https://github.com/user-attachments/assets/1b66d90c-baf7-4f82-bfe2-0599f22e5e7e">
    <img src="https://github.com/user-attachments/assets/1b66d90c-baf7-4f82-bfe2-0599f22e5e7e" width="250" height="150" alt="Perfil Usuário" style="margin-right: 10px;">
  </a>  
</p>


<br>

🔹 Vídeos de demonstração


https://github.com/user-attachments/assets/f3cc8277-39d8-4858-80bc-57af934b1e4d

---

##### Pré-requisitos

🔹 Ruby: Versão 3.1.0 ou superior.

🔹 Rails: Versão 7.0 ou superior.

🔹 PostgreSQL: Versão 13 ou superior.

Para executar a aplicação localmente em seu ambiente de desenvolvimento, siga estas etapas:


🔹 Clone o repositório:
  ```bash
git clone https://github.com/AngeloSouza1/CateqApp.git

```
🔹 Abra o diretório do projeto

```bash
cd CateqApp
```
🔹 Instale as dependências do projeto utilizando o Bundler:

  ```bash
bundle install
```
 🔹 Execute as migrações do banco de dados:

  ```bash
rails db:create
```
    
  ```bash
rails db:migrate
```

```bash
rails db:seed
```
 - O seed irá criar os usuários iniciais (catequistas e catequizandos).

🔹 Inicie o servidor Rails:

```bash
bundle exec rails server
```
🔹 Abra seu navegador e acesse a aplicação em http://localhost:3000.

---

##### Seeds Padrão

O seed padrão cria os seguintes usuários:

🔹 Catequista:

  - Email: catequista@example.com
  - Senha: password123

🔹 Catequizando:

  - Email: catequizando@example.com
  - Senha: password123

🔹 O seed também popula o banco com fichas cadastrais iniciais associadas aos usuários.

---

### ✍️ Estrutura do Projeto

🔹 app/models: Modelos do banco de dados.

🔹 app/controllers: Lógica de controle do aplicativo.

🔹 app/views: Arquivos de visualização renderizados no navegador.

🔹 app/assets: Arquivos estáticos como CSS, JavaScript, e imagens.

---

🌟 Como Usar o CateqApp

🔹 Acessando o Aplicativo:

   - Visite a página principal do CateqApp em http://localhost:3000.

   - Catequistas podem gerenciar as fichas de seus catequizandos, enquanto os catequizandos podem visualizar seus dados.

🔹 Gerenciando Fichas Cadastrais (Acesso de Catequista):

   - Faça login como catequista usando as credenciais fornecidas no seed.

   - No painel de administração, você pode:
        Criar e editar fichas de catequizandos.
        Associar catequizandos a um catequista.

🔹 Consultando Fichas:

   - Catequizandos podem acessar seus dados através da página de dashboard.

---
###  🤝🏻 Contribuição

Contribuições são bem-vindas! Se você quiser contribuir para o projeto, siga estas etapas:

🔹 Faça um fork do projeto.

🔹 Crie uma nova branch com a sua feature: git checkout -b minha-feature

🔹 Faça commit das suas alterações: git commit -m 'Adicionar nova feature'

🔹 Faça push para a branch: git push origin minha-feature

🔹 Envie um pull request.

---
### Licença

Este projeto é licenciado sob a MIT License.

---
### 📧 Contato
Para mais informações ou para relatar problemas, entre em contato pelo angeloafdesouza@gmail.com










