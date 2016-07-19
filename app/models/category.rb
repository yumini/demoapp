class Category < ActiveRecord::Base
	has_many :products
	validates :description,  :presence => { message: "No puede dejarse vacío" }
	validates :description, uniqueness: {case_sensitive: false ,message: "Ya existe registro con esa desccripcion"}
end
