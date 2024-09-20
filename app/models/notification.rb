class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :notifiable, polymorphic: true

  scope :unread, -> { where(read: false) }

  def message
    case notifiable
    when Comentario
      "Novo comentário em sua postagem: '#{notifiable.postagem.title}'"
    when Postagem
      "Nova postagem: '#{notifiable.title}'"
    else
      "Nova notificação"
    end
  end


end
