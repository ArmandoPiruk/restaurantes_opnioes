class Restaurante < ActiveRecord::Base
  validates_presense_of :nome, :message => "deve ser preenchido"
	validates_presense_of :endereco, :message => "deve ser preenchido"
	validates_presense_of :especialidade, :message => "deve ser preenchido"
	
	validates_uniqueness_of :nome, :message => "nome ja cadastrado"
	validates_uniqueness_of :endereco, :message => "endereco ja cadastrado"
	
	validate :primeira_letra_deve_ser_maiuscula
	
	private
	def primeira_letra_deve_ser_maiuscula
		errors.add("nome","primeira letra deve ser MAISCULA") unless nome =~ /[A-Z].*/
	end
	
	has_many :qualificacoes
	has_and_belongs_to_many :pratos
end