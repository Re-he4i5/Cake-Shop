class Public::CartItemsController < ApplicationController
    def index
        @cart_items = current_customer.cart_items.all
    end


end
