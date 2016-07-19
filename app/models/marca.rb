class Marca < ActiveRecord::Base
	has_many :products
	validates :name_marca,  :presence => { message: "No puede dejarse vacío" }
	validates :name_marca, uniqueness: {case_sensitive: false ,message: "Ya existe registro con ese nombre"}
end
