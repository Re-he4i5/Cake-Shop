class Public::OrdersController < ApplicationController
    def new
        @order = Order.new
    end

    def confirm
        @cart_items = current_customer.cart_items
        @order = Order.new(order_params)
        @total_price = 0
        @order.shipping_cost = 800

        if params[:order][:my_address] == "0"
            @order.postal_code = current_customer.postal_code
            @order.name = current_customer.last_name + current_customer.first_name
            @order.address = current_customer.address
        elsif params[:order][:my_address] == "1"
            @address = Address.find(params[:order][:address_id])
            @order.postal_code = @address.postal_code
            @order.name = @address.name
            @order.address = @address.address
        else
            
        end
    end

    private
    def order_params
      params.require(:order).permit(:payment_method, :postal_code, :address, :name, :shipping_cost, :total_payment)
    end

end
