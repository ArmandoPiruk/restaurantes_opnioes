class HelloWorldController < ApplicationController
  def index
    hello
  end
  def hello
    render :text => "Testando RubyOnRaisl, GitHub e Heroku..."
  end
end
