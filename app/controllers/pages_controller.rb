class PagesController < ApplicationController

  def index
    @page = Page.includes(:galleries).find_by_path('root')
    @carousel = @page.galleries.find_by_slider(true)
  end

  def show
    @page = Page.includes(:galleries).find_by_path(params[:id])
    @carousel = @page.galleries.find_by_slider(true)
  end

  def carousel
    @carousel = Gallery.includes(:photos).find(params[:id])
    @photos = @carousel.photos
    render json: @photos
  end

  def catalog
    @categories = Category.all.order('lft ASC')
  end

  def category
    @category = Category.find_by_path(params[:id])
    @properties = Property.all
  end

  def product
    @product = Product.find(params[:product_id])
  end

  private

  def product_params
    params.require(:product).permit(:product_id, :category_id, :price, :title, :body, :gallery_id)
  end

end
