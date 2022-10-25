class WelcomeController < ApplicationController
   def index
    cookies[:curso] = "Curso de Ruby on Rails - Thiago almeida - Cookie"
    session[:curso] = "Curso de Ruby on Rails - Thiago almeida - Session"
    
    @meu_nome = params[:nome]
    @curso = params[:curso]
  end
 
end
