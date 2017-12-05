class Product < ActiveRecord::Base
  belongs_to :provider
  has_many :product_quantities

  def type_enum
		['Bebidas','Comestibles','Proteinas','Accesorios']
	end
end
