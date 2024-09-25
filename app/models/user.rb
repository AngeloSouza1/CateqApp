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
  has_one :ficha_cadastral, dependent: :destroy
  has_many :fichas_cadastrais, foreign_key: 'catequista_id', class_name: 'FichaCadastral'
  has_one :ficha_cadastral, foreign_key: 'user_id'
  # Validações
  validates :role, presence: true, inclusion: { in: roles.keys }

  # Definir papel padrão
  before_create :set_default_role

  # Métodos de verificação de permissões
  def catequista?
    role == 'catequista'
  end

  def catequisando?
    role == 'catequisando'
  end

  private

  def set_default_role
    self.role ||= 'catequisando'
  end
end
