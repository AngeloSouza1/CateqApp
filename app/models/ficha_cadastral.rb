class FichaCadastral < ApplicationRecord
  belongs_to :user
  belongs_to :catequizando, class_name: 'User', foreign_key: 'user_id'
  belongs_to :catequista, class_name: 'User', foreign_key: 'catequista_id'




  validates :nome, :endereco, :data_nascimento, :telefone, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
