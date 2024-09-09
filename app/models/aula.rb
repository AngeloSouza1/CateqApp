class Aula < ApplicationRecord
  belongs_to :user
  has_rich_text :detailed_content

  validates :title, presence: { message: "O título da aula é obrigatório." },presence: true
  validates :content, presence: { message: "A descrição da aula é obrigatória." },presence: true
  validates :detailed_content, presence: { message: "O conteúdo detalhado da aula é obrigatório." },presence: true
end
