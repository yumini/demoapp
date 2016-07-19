class Modelo < ActiveRecord::Base
	has_many :products	
	validates :name_model,  :presence => { message: "No puede dejarse vacío" }
	validates :name_model, uniqueness: {case_sensitive: false ,message: "Ya existe registro con ese nombre"}
end
