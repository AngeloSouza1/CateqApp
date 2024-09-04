# Limpando os dados existentes
puts "Limpando o banco de dados..."

Mensagem.destroy_all
Postagem.destroy_all
Aula.destroy_all
User.destroy_all

puts "Banco de dados limpo!"

# Criando Usuários - Catequistas e Catequizandos
puts "Criando usuários..."

catequista1 = User.find_or_create_by!(email: 'catequista1@example.com') do |user|
  user.password = 'password'
  user.role = 'catequista'
end

catequista2 = User.find_or_create_by!(email: 'catequista2@example.com') do |user|
  user.password = 'password'
  user.role = 'catequista'
end

catequizando1 = User.find_or_create_by!(email: 'catequizando1@example.com') do |user|
  user.password = 'password'
  user.role = 'catequisando'
end

catequizando2 = User.find_or_create_by!(email: 'catequizando2@example.com') do |user|
  user.password = 'password'
  user.role = 'catequisando'
end

puts "Usuários criados!"

# Criando Aulas - Associando aulas aos catequistas
puts "Criando aulas..."

Aula.find_or_create_by!(title: 'Introdução à Catequese', user: catequista1) do |aula|
  aula.content = 'Esta é a primeira aula sobre os fundamentos da catequese.'
end

Aula.find_or_create_by!(title: 'Os Sacramentos', user: catequista2) do |aula|
  aula.content = 'Nesta aula, falaremos sobre os sete sacramentos.'
end

Aula.find_or_create_by!(title: 'A Bíblia e seus Livros', user: catequista1) do |aula|
  aula.content = 'Introdução aos livros da Bíblia e seu significado.'
end

# 6 aulas já criadas anteriormente
Aula.find_or_create_by!(title: 'A Vida de Jesus Cristo', user: catequista1) do |aula|
  aula.content = 'Estudo detalhado da vida e missão de Jesus Cristo.'
end

Aula.find_or_create_by!(title: 'Os Evangelhos', user: catequista2) do |aula|
  aula.content = 'Uma análise dos quatro evangelhos e suas mensagens.'
end

Aula.find_or_create_by!(title: 'A Igreja Primitiva', user: catequista1) do |aula|
  aula.content = 'Como a Igreja começou e se desenvolveu nos primeiros séculos.'
end

Aula.find_or_create_by!(title: 'A Eucaristia e Sua Importância', user: catequista2) do |aula|
  aula.content = 'A importância da Eucaristia na vida cristã.'
end

Aula.find_or_create_by!(title: 'A História dos Santos', user: catequista1) do |aula|
  aula.content = 'Histórias de grandes santos e sua contribuição para a Igreja.'
end

Aula.find_or_create_by!(title: 'O Espírito Santo', user: catequista2) do |aula|
  aula.content = 'O papel do Espírito Santo na Igreja e na vida dos fiéis.'
end

# Adicionando mais 3 aulas
Aula.find_or_create_by!(title: 'A Criação e o Gênesis', user: catequista1) do |aula|
  aula.content = 'Exploração do livro do Gênesis e o relato da criação.'
end

Aula.find_or_create_by!(title: 'A Missão dos Apóstolos', user: catequista2) do |aula|
  aula.content = 'O trabalho dos apóstolos e o estabelecimento da Igreja.'
end

Aula.find_or_create_by!(title: 'A Vida de Maria', user: catequista1) do |aula|
  aula.content = 'Estudo sobre a vida de Maria, mãe de Jesus, e sua importância.'
end

puts "Aulas criadas!"

# Criando Postagens
puts "Criando postagens..."

Postagem.find_or_create_by!(title: 'Bem-vindo à Catequese!', user: catequista1) do |postagem|
  postagem.content = 'Estamos muito felizes por tê-los conosco nesta jornada de fé.'
end

Postagem.find_or_create_by!(title: 'Celebração da Eucaristia', user: catequista2) do |postagem|
  postagem.content = 'No próximo domingo, teremos uma celebração especial. Todos estão convidados!'
end

puts "Postagens criadas!"

# Criando Mensagens - Associando mensagens entre catequizando e catequista
puts "Criando mensagens..."

Mensagem.find_or_create_by!(content: 'Olá catequista, tenho uma dúvida sobre a aula de hoje.', user: catequizando1, receiver_id: catequista1.id)

Mensagem.find_or_create_by!(content: 'Quando será a próxima aula?', user: catequizando2, receiver_id: catequista2.id)

Mensagem.find_or_create_by!(content: 'Obrigado pela aula, foi muito esclarecedora!', user: catequizando1, receiver_id: catequista1.id)

puts "Mensagens criadas!"
