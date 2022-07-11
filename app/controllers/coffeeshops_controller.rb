class CoffeeshopsController < ApplicationController
   def index
      @coffeeshops = Coffeeshop.order_created_at_desc
   end

   def show
      @coffeeshop = Coffeeshop.find(params[:id])
   end
end