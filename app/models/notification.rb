class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :notifiable, polymorphic: true

  scope :unread, -> { where(read: false) }

  def message
    case notifiable
    when Comentario
      case self.message_type
      when 'created'
        "Novo comentário na postagem: '#{notifiable.postagem.title}'"
      when 'updated'
        "Comentário alterado na postagem: '#{notifiable.postagem.title}'"
      when 'deleted'
        "Comentário removido da postagem: '#{notifiable.postagem.title}'"
      end
    when Postagem
      case self.message_type
      when 'created'
        "Nova postagem: '#{notifiable.title}'"
      when 'updated'
        "Postagem alterada: '#{notifiable.title}'"
      when 'deleted'
        "Postagem removida: '#{notifiable.title}'"
      end
    else
      "Nova notificação"
    end
  end
end
