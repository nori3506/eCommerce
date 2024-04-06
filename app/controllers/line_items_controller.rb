class LineItemsController < ApplicationController
  def buy_now
    @selected_product = Product.find(params[:product_id])
    if @current_cart.products.include?(@selected_product)
      @line_item = @current_cart¥.line_items.find_by(product_id: @selected_product.id)
    else
      @line_item = LineItem.new
      @line_item.cart = @current_cart
      @line_item.product = @selected_product
      @line_item.save
    end
    redirect_to carts_path(@current_cart)
  end
end
