class TopController < ApplicationController
  def index
  	@items = Item.page(params[:page]).per(8)
  	# @order_item = current_order.order_items.new
  	@cart = Cart.new
  	# binding.pry
  end
end
