class Product < ActiveRecord::Base
	  belongs_to :category
    belongs_to :modelo
    belongs_to :marca
    validates_numericality_of :price,  :message => 'Debe ser un numero'
    mount_uploader :image, ImageUploader
    validates_integrity_of  :image
    validates :product_name, :marca_id, :category_id, :modelo_id,  :presence => { message: "No puede dejarse vacío" }

  def self.sortByCategory(category)
    @category = Category.find_by_DescriptionCategory(category)
    @products = @category.products 
    return @products
  end
  
  def self.sortByMarca(marca)
    @marca = Brand.find_by_NameMarca(marca)
    @products = @marca.products 
    return @products
  end

  def self.sortByModelo(modelo)
  	@modelo = modelo.find_by_NameModelo(modelo)
  	products = @modelo.products
  	return @products
  end

  def self.search(search)
    if search
      where('product_name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
