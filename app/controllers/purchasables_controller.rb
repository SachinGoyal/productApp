class PurchasablesController < ApplicationController
  def index
    @purchasables = Product.joins("LEFT JOIN product_variants ON products.id = product_variants.product_id")
                           .select('COALESCE(product_variants.id, products.id) id, '\
                                    'COALESCE(product_variants.name, products.name) as name, '\
                                    'COALESCE(product_variants.sale_message, products.sale_message) sale_message, '\
                                    'COALESCE(product_variants.discounted_price, products.discounted_price) discounted_price, '\
                                    'COALESCE(product_variants.price, products.price) price, '\
                                    'COALESCE(product_variants.description, products.description) description')
  render json: @purchasables
  end

  def show
    @purchasable = ProductVariant.find_by(id: params[:id])
    @purchasable ||= Product.find(params[:id])
    render json: @purchasable
  end
end
