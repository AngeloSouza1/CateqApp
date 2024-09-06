class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   enum role: { catequista: 'catequista', catequisando: 'catequisando' }

  has_many :mensagens
  has_many :postagems
  has_many :aulas
  has_many :comentarios

end
