class HelloWorldController < ApplicationController
  def index
    hello
  end
  def hello
    render :text => "<div style='text-align:center'><h1>Testando RubyOnRails, GitHub e Heroku...</h1></div>"
  end
end
