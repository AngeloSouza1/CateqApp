json.extract! postagem, :id, :title, :content, :user_id, :created_at, :updated_at
json.url postagem_url(postagem, format: :json)
