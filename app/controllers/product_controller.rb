class ProductController < ApplicationController
  include ReviewConcern

  def index
    top_product = Review.top('product_id')
    @product_ids = ids_from(top_product)
  end
end
