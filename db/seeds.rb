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

# Seeding das aulas com conteúdo detalhado de pelo menos 300 caracteres

Aula.find_or_create_by!(title: 'Introdução à Catequese', user: catequista1) do |aula|
  aula.content = 'Esta é a primeira aula sobre os fundamentos da catequese.'
  aula.detailed_content = 'Nesta aula introdutória, vamos abordar os princípios básicos da catequese...'
end

Aula.find_or_create_by!(title: 'Os Sacramentos', user: catequista2) do |aula|
  aula.content = 'Nesta aula, falaremos sobre os sete sacramentos.'
  aula.detailed_content = 'Os sacramentos são sinais visíveis de uma graça invisível, instituídos por Cristo...'
end

Aula.find_or_create_by!(title: 'A Bíblia e seus Livros', user: catequista1) do |aula|
  aula.content = 'Introdução aos livros da Bíblia e seu significado.'
  aula.detailed_content = 'A Bíblia é composta por vários livros que formam o Antigo e o Novo Testamento...'
end

Aula.find_or_create_by!(title: 'A Vida de Jesus Cristo', user: catequista1) do |aula|
  aula.content = 'Estudo detalhado da vida e missão de Jesus Cristo.'
  aula.detailed_content = 'Jesus Cristo é o centro da fé cristã. Nesta aula, exploraremos sua vida...'
end

Aula.find_or_create_by!(title: 'Os Evangelhos', user: catequista2) do |aula|
  aula.content = 'Uma análise dos quatro evangelhos e suas mensagens.'
  aula.detailed_content = 'Os quatro Evangelhos – Mateus, Marcos, Lucas e João – são relatos distintos da vida de Jesus...'
end

puts "Aulas criadas!"

# Criando Postagens
puts "Criando postagens..."

postagem1 = Postagem.find_or_create_by!(title: 'Bem-vindo à Catequese!', user: catequista1) do |postagem|
  postagem.content = 'Estamos muito felizes por tê-los conosco nesta jornada de fé.'
end

postagem2 = Postagem.find_or_create_by!(title: 'Celebração da Eucaristia', user: catequista2) do |postagem|
  postagem.content = 'No próximo domingo, teremos uma celebração especial. Todos estão convidados!'
end

puts "Postagens criadas!"

# Criando Mensagens - Associando mensagens entre catequizando e catequista
puts "Criando mensagens..."

Mensagem.find_or_create_by!(content: 'Olá catequista, tenho uma dúvida sobre a aula de hoje.', user: catequizando1, postagem: postagem1, receiver_id: catequista1.id)

Mensagem.find_or_create_by!(content: 'Quando será a próxima aula?', user: catequizando2, postagem: postagem2, receiver_id: catequista2.id)

Mensagem.find_or_create_by!(content: 'Obrigado pela aula, foi muito esclarecedora!', user: catequizando1, postagem: postagem1, receiver_id: catequista1.id)

puts "Mensagens criadas!"
