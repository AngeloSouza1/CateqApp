class Mensagem < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: 'User'
  belongs_to :postagem  # Uma mensagem pertence a uma postagem
end
