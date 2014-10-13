class Admin::ProductsController < Admin::AdminController
  before_action :signed_in_manager, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_product, only: [:show, :find, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token


  def index
    @products = Product.all
    @prod_delete = Product.find_by_name("Название продукта")
    if @prod_delete
      @prod_delete.destroy
    end
  end

  def show
  end

  def new
    @product = Product.new(:price => 0, :name => "Название продукта")
    if @product.save
      redirect_to edit_admin_product_url(@product)
    else
      render :json => {error: @product.errors}
    end
  end

  def edit
    @categories = Admin::Category.all
  end

  def find
    @categories = Admin::Category.all
    @properties_values = @product.prop_val
    render :json => {
        product: @product,
        product_categories: @product.categories,
        categories: @categories,
        properties: @properties_values
    }
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      render :json => {success: @product}
    else
      render :json => {error: @product.errors}
    end
  end

  def update
    if @product.update_all(product_params)
      render :json => {success: @product}
    else
      render :json => {error: @product.errors}
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_property
    @product = Product.find(params[:product_id])
    @property = Property.find(params[:property_id])
    @product.properties << @property
    @properties = Property.all - @product.properties
    render :json => {
        properties: @properties,
        product_properties: @product.properties
    }
  end

  def set_property_value
    @product = Product.find(params[:product_id])
    @property = Property.find(params[:property_id])
    @value = Value.find(params[:value_id])
    unless @product.properties.exists?(@property)
      @product.properties << @property
    end
    unless @product.values.exists?(@value)
      @product.values << @value
    else
      @product.values.delete(@value)
      if @product.values.where(property_id: @value.property_id).length == 0
        @product.properties.delete(@property)
      end
    end
    render :json => {
        properties: @product.prop_val
    }
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    # params.require(:offer).permit!
    params.require(:product).permit(:name, :body, :price, :sale, :art, :property_id, :value_id, :product_categories => [:ids])
    # params.require(:user).permit( :attribute_translations => [:id => [:name, :city, :includes, :notes, :description, :slug]])
    # :attribute_translations => [:id => [:name, :city, :includes, :notes, :description, :slug]]
  end

end
