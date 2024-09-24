class User < ApplicationRecord
  # Inclui os módulos do Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Define enum para o papel do usuário
  enum role: { catequista: 'catequista', catequisando: 'catequisando' }

  # Associações
  has_many :mensagens
  has_many :postagems
  has_many :aulas
  has_many :comentarios
  has_many :notifications, dependent: :destroy

  # Métodos de verificação de permissões
  def catequista?
    role == 'catequista'
  end

  def catequisando?
    role == 'catequisando'
  end
end
