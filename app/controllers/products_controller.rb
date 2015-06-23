class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path, notice: 'Product was added successfully created.'
    else
      redirect_to root_path
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :quantity)
  end
end
