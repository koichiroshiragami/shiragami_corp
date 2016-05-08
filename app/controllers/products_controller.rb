class ProductsController < ApplicationController

  before_action :move_to_productlist, except: [:productlist, :show]

  def productlist
    @products = Product.order("Created_at DESC")
  end

  def new
  end

  def show
  end

  def create
    Product.create(product_params)
  end

    private
    def product_params
      params.permit(:title, :image, :shorttext, :fulltext)
    end

  def move_to_productlist
    redirect_to action: :productlist unless user_signed_in?
  end

end
