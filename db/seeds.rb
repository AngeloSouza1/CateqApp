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

# Seeding das aulas com conteúdo detalhado de 1500 caracteres

Aula.find_or_create_by!(title: 'Introdução à Catequese', user: catequista1) do |aula|
  aula.content = 'Esta é a primeira aula sobre os fundamentos da catequese.'
  aula.detailed_content = 'Nesta aula introdutória, vamos abordar os princípios básicos... (conteúdo de 1500 caracteres).'
end

Aula.find_or_create_by!(title: 'Os Sacramentos', user: catequista2) do |aula|
  aula.content = 'Nesta aula, falaremos sobre os sete sacramentos.'
  aula.detailed_content = 'Os sacramentos são essenciais para a vida espiritual... (conteúdo de 1500 caracteres).'
end

# Adicione as outras aulas conforme necessário...

puts "Aulas criadas!"


# Criando Postagens
puts "Criando postagens..."

postagem1 = Postagem.find_or_create_by!(title: 'Bem-vindo à Catequese!', user: catequista1) do |postagem|
  postagem.content = 'Estamos muito felizes por tê-los conosco nesta jornada de fé... (postagem completa).'
end

postagem2 = Postagem.find_or_create_by!(title: 'Celebração da Eucaristia', user: catequista2) do |postagem|
  postagem.content = 'No próximo domingo, teremos uma celebração especial... (postagem completa).'
end

# Novas postagens
postagem3 = Postagem.find_or_create_by!(title: 'Retiro Espiritual de Catequistas', user: catequista1) do |postagem|
  postagem.content = 'No próximo mês, teremos um retiro espiritual especial... (postagem completa).'
end

postagem4 = Postagem.find_or_create_by!(title: 'Encontro de Jovens Catequizandos', user: catequista2) do |postagem|
  postagem.content = 'Estamos organizando um encontro especial para os jovens... (postagem completa).'
end

puts "Postagens criadas!"


# Criando Mensagens - Associando mensagens entre catequizando e catequista
puts "Criando mensagens..."

Mensagem.find_or_create_by!(content: 'Olá catequista, tenho uma dúvida sobre a aula de hoje.', user: catequizando1, receiver_id: catequista1.id, postagem_id: postagem1.id)

Mensagem.find_or_create_by!(content: 'Quando será a próxima aula?', user: catequizando2, receiver_id: catequista2.id, postagem_id: postagem2.id)

Mensagem.find_or_create_by!(content: 'Obrigado pela aula, foi muito esclarecedora!', user: catequizando1, receiver_id: catequista1.id, postagem_id: postagem1.id)

puts "Mensagens criadas!"
