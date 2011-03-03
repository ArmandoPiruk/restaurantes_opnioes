class HelloWorldController < ApplicationController
  def index
    hello
  end
  def hello
    render :text => "<h1>Testando RubyOnRaisl, GitHub e Heroku...</h1>"
  end
end
