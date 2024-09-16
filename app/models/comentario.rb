class Comentario < ApplicationRecord
  belongs_to :postagem
  belongs_to :user

   # Validação para garantir que o conteúdo não seja vazio
   validates :content, presence: { message: "O comentário não pode estar vazio." }
end
