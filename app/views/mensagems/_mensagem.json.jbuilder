json.extract! mensagem, :id, :content, :user_id, :created_at, :updated_at
json.url mensagem_url(mensagem, format: :json)
