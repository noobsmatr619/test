class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
      @order = Order.new
    end
  
    def edit
      @order = Order.find(params[:id])
    end
  
    def create
      @order = Order.new(order_params)
      respond_to do |format|
        if @order.save
          format.html {redirect_to orders_path}
        end
      end
    end
  
    def update
      @order = Order.find(params[:id])
      respond_to do |format|
        if @order.update(order_params)
          format.html {redirect_to orders_path}
        end
      end    
    end
  
    def destroy
      @order = Order.find(params[:id])
      if @order.destroy
        respond_to do |format|
          format.html {redirect_to orders_path}
        end
      end
    end
    private
    def order_params
    
    params.require(:order).permit(:user_id, :order_quantity, :price, :order_type)
    end

end
