class Comentario < ApplicationRecord
  belongs_to :postagem
  belongs_to :user
end
