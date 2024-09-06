class Postagem < ApplicationRecord
  belongs_to :user
  has_many :mensagens, class_name: 'Mensagem', dependent: :destroy
  has_many :comentarios, dependent: :destroy
end
