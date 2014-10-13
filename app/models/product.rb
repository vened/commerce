class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :properties
  has_and_belongs_to_many :values


  # scope :filter, -> (value_id){ joins(:values).group("id"){ where(id: value_id)} }

  scope :filter, -> (value_id){ joins(:values).where('values.id = ?', value_id) }
  
  validates :price, :numericality => true


  # VALID_NAME_REGEX = /"Название продукта"/i
  validates :name, presence: true
  # validates :name, format: {with: VALID_NAME_REGEX}


  def prop_val
    @product_properties = []
    Property.all.each do |property|
      property_values = []
      property.values.each do |value|
        unless self.values.exists?(value)
          property_value = {id: value.id, value: value.value, checked: 0}
          property_values.push property_value
        else
          property_value = {id: value.id, value: value.value, checked: 1}
          property_values.push property_value
        end
      end
      product_property = {id: property.id, name: property.name, values: property_values}
      @product_properties.push product_property
    end
    return @product_properties
  end

  
  def update_all(params)
    unless params[:name] == "Название продукта"
      self.update(params)
      
      # {"1"=>{"ids"=>"1"}, "3"=>{"ids"=>false}, "4"=>{"ids"=>"4"}}
      if params[:product_categories]
        params[:product_categories].each do |item|
          @category = Category.find(item[0])
          unless self.categories.exists?(item[0])
            self.categories << @category
          end
          if item[1]['ids'] == false
            self.categories.delete(@category)
          end
        end
      end
    else
      self.destroy
    end
  end

end
