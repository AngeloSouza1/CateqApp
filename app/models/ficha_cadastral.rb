class FichaCadastral < ApplicationRecord
  belongs_to :user

  validates :nome, :endereco, :data_nascimento, :telefone, presence: true
  validates :faltas, numericality: { only_integer: true }
  validates :nota_desempenho, numericality: true
end
