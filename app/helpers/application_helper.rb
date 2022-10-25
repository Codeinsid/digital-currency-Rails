module ApplicationHelper
=begin    def locale
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil"
    "(metodo de localização da sua região)"  
    end
=end    
    def certeza
       certeza = "tem certeza disso?"
    end
        
    
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y") # Metodo de converter tipo de formato de data us para br
    end
    
    def nome_aplicacao
        "CRYPTO WALLET APP"
    end
    
    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
