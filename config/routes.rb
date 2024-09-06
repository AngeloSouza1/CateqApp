Rails.application.routes.draw do
  # Rotas do Devise para autenticação
  devise_for :users

  # Definir a rota raiz (página inicial) do aplicativo
  root 'pages#home'

  # Rotas para Aulas
  resources :aulas

  # Rotas para Postagens (com associação ao usuário) e aninhamento de Mensagens
  resources :postagems do
    resources :mensagens, only: [:create, :destroy]  # Mensagens aninhadas dentro de Postagens
    resources :comentarios, only: [:create, :edit, :update, :destroy]
  end
end
