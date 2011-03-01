class Restaurante < ActiveRecord::Base
  validates :nome, :presence => true, :uniqueness => true, :length => { :maximum => 50 }
  
  validates_presence_of :endereco, :message => " - deve ser preenchido"
  validates_presence_of :especialidade, :message => " - deve ser preenchido"
  
  validates_uniqueness_of :endereco, :message => " endereco ja cadastrado"
  
  validate :primeira_letra_deve_ser_maiuscula
  
  private
  def primeira_letra_deve_ser_maiuscula
    errors.add("nome","primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
  end
  
  has_many :qualificao
  has_and_belongs_to_many :prato
end
