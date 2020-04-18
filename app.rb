require_relative 'tradution.rb'

LANGUAGE_MAP = { '1' => 'en' , '2' => 'ru' , '3'=> 'pt' }

puts ' ** Grazi Tradutora** '
puts 'Digite uma frase:'
text = gets.chomp
puts 'Digite a linguagem atual:'
puts '1 - Inglês'
puts '2 - Russo'
puts '3 - Português'
numero = gets.chomp
idioma_atual = LANGUAGE_MAP[numero]
puts
puts 'Digite o idioma que deseja traduzir:'
puts '1 - Inglês'
puts '2 - Russo'
puts '3 - Português'
numero2 = gets.chomp
idioma_destino = LANGUAGE_MAP[numero2]

traducao = Tradution.new(text , idioma_atual ,idioma_destino)

puts "A tradução é: #{traducao.traduzir} "

