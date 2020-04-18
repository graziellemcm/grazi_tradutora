require 'rest-client'
require 'json'

class Tradution
    attr_accessor :text , :idioma_atual , :idioma_destino
    KEY = "trnsl.1.1.20200415T041342Z.a521d34ac9ebf42c.3581a4916fd3200438f3be1befbeb150718c3634"
    
    def initialize( text , idioma_atual ,idioma_destino)
        @text = text
        @idioma_atual = idioma_atual
        @idioma_destino = idioma_destino
    end

    def traduzir 
        response = RestClient.get('https://translate.yandex.net/api/v1.5/tr.json/translate', {params: {key: KEY , text: text , lang: "#{idioma_atual}-#{idioma_destino}"}})
        json = JSON.parse(response.body)
       
        File.open(DateTime.now.strftime('%d-%m-%Y_%H:%M.txt') , 'a') do |line|   
            line.puts( "#{text} / #{json['text'][0]} ")
        end

        return json['text'][0]
    end
end