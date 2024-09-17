class Aula < ApplicationRecord
  belongs_to :user
  has_rich_text :detailed_content
  has_one_attached :image

  validates :title, presence: { message: " - O título da aula é obrigatório." }
  validates :content, presence: { message: "- A descrição da aula é obrigatória." }
  validates :detailed_content, presence: { message: "- O conteúdo detalhado da aula é obrigatório." }
end
