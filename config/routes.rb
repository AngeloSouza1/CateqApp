Rails.application.routes.draw do
  # Rotas do Devise para autenticação
  devise_for :users

  # Rotas para fichas cadastrais (somente catequistas podem gerenciar)
  resources :ficha_cadastrals, only: [:index, :new, :create, :edit, :update, :destroy]

  # Definir a rota raiz (página inicial) do aplicativo
  root 'pages#home'

  # Rotas para Aulas
  resources :aulas

  # Rotas para Postagens e Comentários
  resources :postagems do
    resources :mensagens, only: [:create, :destroy]
    resources :comentarios, only: [:create, :edit, :update, :destroy]
  end

  # Rotas para Notificações
  resources :notifications, only: [:index] do
    member do
      patch :mark_as_read
    end
  end

  # Rotas para Orações
  resources :oracoes

  # Rota para o Dashboard do Catequizando
  get 'catequizando/dashboard', to: 'catequizando#dashboard', as: 'catequizando_dashboard'
end
