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

Aula.find_or_create_by!(title: 'A Criação do Mundo e o Livro de Gênesis', user: catequista1) do |aula|
  aula.content = 'Exploração dos primeiros capítulos do Gênesis, discutindo a criação do mundo e o papel de Deus como Criador.'
  aula.detailed_content = 'O livro de Gênesis é o ponto de partida para toda a narrativa bíblica, começando com a famosa frase "No princípio, Deus criou os céus e a terra". Esta aula explora os primeiros dois capítulos de Gênesis, onde é descrito o processo de criação do mundo. Os alunos aprenderão sobre os seis dias de criação e o descanso de Deus no sétimo dia, além de entenderem a importância do conceito de "criação" na tradição judaico-cristã... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'O Pecado Original e a Queda do Homem', user: catequista2) do |aula|
  aula.content = 'Discussão sobre a queda de Adão e Eva e as consequências do pecado original.'
  aula.detailed_content = 'Esta aula foca na história de Adão e Eva e o pecado original, descrito em Gênesis 3. A desobediência de Adão e Eva, ao comerem do fruto proibido, é o ponto de virada na história da humanidade, introduzindo o pecado no mundo. Discutiremos o significado da queda e suas implicações teológicas, como a necessidade de redenção, o papel de Satanás na tentação e o conceito de "livre-arbítrio"... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'Os Patriarcas: Abraão, Isaac e Jacó', user: catequista1) do |aula|
  aula.content = 'Estudo da vida dos patriarcas bíblicos e sua importância para o povo de Israel.'
  aula.detailed_content = 'Abraão, Isaac e Jacó são os patriarcas do povo de Israel. Abraão, conhecido como o pai da fé, é chamado por Deus para deixar sua terra e sua família e seguir para uma terra que Deus lhe mostraria. Isaac, o filho prometido de Abraão, e Jacó, que mais tarde se torna Israel, são figuras centrais na história da salvação. Esta aula explorará os relatos bíblicos da vida desses patriarcas, suas alianças com Deus e a promessa de uma grande nação... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'O Êxodo e a Libertação do Povo de Israel', user: catequista2) do |aula|
  aula.content = 'A história da libertação do povo de Israel da escravidão no Egito sob a liderança de Moisés.'
  aula.detailed_content = 'O Êxodo é um dos eventos mais importantes da Bíblia, retratando a libertação do povo de Israel da escravidão no Egito. Moisés é escolhido por Deus para liderar essa libertação, culminando na travessia milagrosa do Mar Vermelho. Esta aula examinará as pragas que Deus enviou ao Egito, o significado da Páscoa judaica, e a jornada de 40 anos no deserto, que moldou a identidade do povo de Israel como nação... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'Os Dez Mandamentos e a Aliança com Deus', user: catequista1) do |aula|
  aula.content = 'Estudo dos Dez Mandamentos dados a Moisés no Monte Sinai e seu significado para a vida moral e espiritual.'
  aula.detailed_content = 'Os Dez Mandamentos são os pilares da lei moral que Deus entregou ao seu povo no Monte Sinai. Eles não apenas regulam o comportamento individual e social, mas também estabelecem uma aliança especial entre Deus e o povo de Israel. Nesta aula, analisaremos cada mandamento em detalhe, discutindo sua aplicação prática na vida dos cristãos e seu papel fundamental na formação da ética judaico-cristã... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'O Reino de Deus nas Parábolas de Jesus', user: catequista2) do |aula|
  aula.content = 'Exploração das parábolas de Jesus e o conceito de Reino de Deus.'
  aula.detailed_content = 'Jesus frequentemente usava parábolas para ensinar sobre o Reino de Deus. Nesta aula, vamos explorar algumas das parábolas mais conhecidas, como a Parábola do Semeador, a Parábola do Bom Samaritano e a Parábola do Filho Pródigo. Discutiremos como essas histórias simples, mas profundas, revelam verdades espirituais complexas e continuam a inspirar e ensinar gerações de cristãos... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'As Bem-aventuranças e o Sermão da Montanha', user: catequista1) do |aula|
  aula.content = 'Análise do Sermão da Montanha e das Bem-aventuranças de Jesus.'
  aula.detailed_content = 'O Sermão da Montanha é um dos ensinamentos mais famosos de Jesus, oferecendo uma visão profunda sobre a vida no Reino de Deus. As Bem-aventuranças, que abrem o sermão, são um conjunto de promessas para aqueles que seguem o caminho de Cristo, como os pobres de espírito, os mansos e os que choram. Esta aula abordará cada uma dessas bem-aventuranças e seu significado para a vida cristã, destacando a inversão de valores que o Reino de Deus propõe... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'Os Milagres de Jesus e Sua Importância Espiritual', user: catequista2) do |aula|
  aula.content = 'Uma análise dos milagres de Jesus e como eles revelam o poder de Deus.'
  aula.detailed_content = 'Os milagres de Jesus são manifestações do poder divino e servem como sinais da presença de Deus no mundo. Esta aula examinará alguns dos milagres mais conhecidos, como a cura dos cegos, a multiplicação dos pães e peixes, e a ressurreição de Lázaro. Discutiremos o significado teológico desses milagres e como eles revelam o amor, a misericórdia e a autoridade de Jesus como o Filho de Deus... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'A Última Ceia e o Sacramento da Eucaristia', user: catequista1) do |aula|
  aula.content = 'Estudo do significado da Última Ceia e a instituição do sacramento da Eucaristia.'
  aula.detailed_content = 'A Última Ceia de Jesus com seus apóstolos é um dos eventos mais importantes do Novo Testamento, onde Ele institui a Eucaristia, o sacramento central da fé cristã. Nesta aula, exploraremos o contexto da ceia pascal, o simbolismo do pão e do vinho como corpo e sangue de Cristo, e a importância desse sacramento na vida da Igreja. Veremos como a Eucaristia conecta os fiéis ao sacrifício redentor de Cristo... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'A Paixão, Morte e Ressurreição de Jesus', user: catequista2) do |aula|
  aula.content = 'Reflexão sobre os eventos da Paixão, Morte e Ressurreição de Cristo e seu significado para a salvação.'
  aula.detailed_content = 'A Paixão, Morte e Ressurreição de Jesus são o coração da fé cristã. Nesta aula, refletiremos sobre os últimos dias de Cristo, desde a agonia no Getsêmani até sua crucificação no Calvário. Discutiremos o significado espiritual do sacrifício de Jesus e sua vitória sobre a morte na manhã da Páscoa, que oferece a todos os crentes a esperança de vida eterna. Esta aula ajudará os alunos a compreenderem o grande mistério da redenção... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'O Espírito Santo e Pentecostes', user: catequista1) do |aula|
  aula.content = 'A vinda do Espírito Santo em Pentecostes e seu impacto na Igreja primitiva.'
  aula.detailed_content = 'O Espírito Santo é a terceira pessoa da Santíssima Trindade e desempenha um papel vital na vida dos cristãos e da Igreja. Nesta aula, exploraremos o evento de Pentecostes, quando o Espírito Santo desceu sobre os apóstolos e os capacitou para iniciar a missão da Igreja. Discutiremos o significado de Pentecostes e os dons do Espírito, como sabedoria, entendimento e fortaleza, que são essenciais para a vida cristã... (continue com mais conteúdo detalhado)'
end

Aula.find_or_create_by!(title: 'A Missão da Igreja e o Chamado à Evangelização', user: catequista2) do |aula|
  aula.content = 'Reflexão sobre a missão da Igreja e o papel dos cristãos na evangelização.'
  aula.detailed_content = 'Desde o seu início, a Igreja tem a missão de proclamar o Evangelho a todas as nações. Nesta aula, discutiremos o mandato missionário de Cristo aos seus apóstolos e como essa missão continua até os dias de hoje. Veremos o papel da evangelização no mundo moderno e como cada cristão é chamado a ser uma testemunha viva do Evangelho em sua vida diária. Esta aula incentivará os alunos a refletirem sobre seu próprio papel na missão da Igreja... (continue com mais conteúdo detalhado)'
end

puts "Aulas criadas!"


# Criando Postagens
puts "Criando postagens..."

postagem1 = Postagem.find_or_create_by!(title: 'Bem-vindo à Catequese!', user: catequista1) do |postagem|
  postagem.content = 'Estamos muito felizes por tê-los conosco nesta jornada de fé...'
end

postagem2 = Postagem.find_or_create_by!(title: 'Celebração da Eucaristia', user: catequista2) do |postagem|
  postagem.content = 'No próximo domingo, teremos uma celebração especial da Eucaristia...'
end

puts "Postagens criadas!"

# Criando Mensagens - Associando mensagens entre catequizando e catequista
puts "Criando mensagens..."

# Mensagens associadas corretamente com "receiver" sendo o usuário correto
Mensagem.find_or_create_by!(content: 'Olá catequista, tenho uma dúvida sobre a aula de hoje.', user: catequizando1, receiver: catequista1, postagem: postagem1)

Mensagem.find_or_create_by!(content: 'Quando será a próxima aula?', user: catequizando2, receiver: catequista2, postagem: postagem2)

Mensagem.find_or_create_by!(content: 'Obrigado pela aula, foi muito esclarecedora!', user: catequizando1, receiver: catequista1, postagem: postagem1)

puts "Mensagens criadas!"


# Criando Orações
puts "Criando orações..."

oracoes = [
  { 
    titulo: "Pai Nosso", 
    conteudo: <<-TEXT
Pai nosso que estais no céu, santificado seja o vosso nome, venha a nós o vosso reino, seja feita a vossa vontade, assim na terra como no céu. O pão nosso de cada dia nos dai hoje, perdoai-nos as nossas ofensas, assim como nós perdoamos a quem nos tem ofendido, e não nos deixeis cair em tentação, mas livrai-nos do mal. Amém.
    TEXT
  },
  { 
    titulo: "Ave Maria", 
    conteudo: <<-TEXT
Ave Maria, cheia de graça, o Senhor é convosco. Bendita sois vós entre as mulheres e bendito é o fruto do vosso ventre, Jesus. Santa Maria, Mãe de Deus, rogai por nós pecadores, agora e na hora de nossa morte. Amém.
    TEXT
  },
  { 
    titulo: "Credo", 
    conteudo: <<-TEXT
Creio em Deus Pai todo-poderoso, criador do céu e da terra; e em Jesus Cristo, seu único Filho, nosso Senhor; que foi concebido pelo poder do Espírito Santo; nasceu da Virgem Maria; padeceu sob Pôncio Pilatos; foi crucificado, morto e sepultado; desceu à mansão dos mortos; ressuscitou ao terceiro dia; subiu aos céus; está sentado à direita de Deus Pai todo-poderoso, de onde há de vir a julgar os vivos e os mortos. Creio no Espírito Santo, na santa Igreja Católica, na comunhão dos santos, na remissão dos pecados, na ressurreição da carne, na vida eterna. Amém.
    TEXT
  },
  { 
    titulo: "Glória ao Pai", 
    conteudo: <<-TEXT
Glória ao Pai, ao Filho e ao Espírito Santo, como era no princípio, agora e sempre. Amém.
    TEXT
  },
  { 
    titulo: "Salve Rainha", 
    conteudo: <<-TEXT
Salve, Rainha, Mãe de Misericórdia, vida, doçura e esperança nossa, salve! A vós bradamos os degredados filhos de Eva, a vós suspiramos, gemendo e chorando neste vale de lágrimas. Eia, pois, advogada nossa, esses vossos olhos misericordiosos a nós volvei, e, depois deste desterro, mostrai-nos Jesus, bendito fruto do vosso ventre. Ó clemente, ó piedosa, ó doce sempre Virgem Maria! Rogai por nós, Santa Mãe de Deus, para que sejamos dignos das promessas de Cristo. Amém.
    TEXT
  }
]

oracoes.each do |oracao|
  Oracao.find_or_create_by!(titulo: oracao[:titulo], conteudo: oracao[:conteudo], user: catequista1)
end

puts "Orações criadas!"