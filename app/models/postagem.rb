class Postagem < ApplicationRecord
  belongs_to :user
  has_many :mensagens, class_name: "Mensagem", dependent: :destroy
  has_many :comentarios, dependent: :destroy

  validates :title, presence: { message: " - O título da postagem é obrigatório." }
  validates :content, presence: { message: "- O conteúdo da postagem é obrigatório." }
end
