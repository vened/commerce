class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def filters
    filters = []
    JSON.parse(params[:filters]).each do |f|
      filters.push f[1]
    end

    @products = Product.filter(filters.join(","))

    def prod_val(products, filters)
      @p = []
      if filters.length > 0
        f = filters.shift
        for product in products
          if product.values.exists?(f)
            @p.push product
          end
        end
        @p = @p.uniq
        prod_val(@p, filters)
      else
        return @p = products
      end
    end

    @products = prod_val(@products, filters)
    
    @res = []
    @products.each do |product|
      prod = {product: nil, values: nil}
      prod[:product] = product
      prod[:values] = product.values
      @res.push prod
    end

    render :json => @res
  end


  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:price, :title, :body, :filters)
  end
end
