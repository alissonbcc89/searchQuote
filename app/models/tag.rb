class Tag
  include Mongoid::Document
  field :name, type: String
  has_many :quote


  def self.buscar(entrada)
    
  require 'nokogiri'
  require 'open-uri'

    retorno = false

    doc = Nokogiri::HTML(open('http://quotes.toscrape.com/'))

    div = doc.css('div.col-md-8').css('div.quote')
    
      
      
      
    div.search('div').each do |d|
      
      
      
        author = d.css('span').css('small.author').text
        l = d.css('span').css('a')
        frase = d.css('span.text').text
      

        tags = d.css('div.tags').text.to_s.split()
      
        
        
      
          
            puts %("#{frase.chomp}" - "#{author.chomp}" - "#{t}" - "#{l}" )
          end
      
          
      
      
        next if d['class'] == 'tags'

        if (tags.include?(entrada[:name]) )
          retorno =  true
        end
    end
      
        return retorno
  end

  def 
    
end
