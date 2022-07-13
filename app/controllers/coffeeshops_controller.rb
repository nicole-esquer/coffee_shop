class CoffeeshopsController < ApplicationController
   def index
      @coffeeshops = Coffeeshop.order_created_at_desc
   end

   def show
      @coffeeshop = Coffeeshop.find(params[:id])
   end

   def update
      coffeeshop = Coffeeshop.find(params[:id])
      coffeeshop.update({
         name: params[:coffeeshop][:name],
         capacity: params[:coffeeshop][:capacity],
         outdoor_seating: params[:coffeeshop][:outdoor_seating]
      })

      coffeeshop.save

      redirect_to "/coffeeshops/#{coffeeshop.id}"
   end
   
   def create
      coffeeshop = Coffeeshop.new({
         name: params[:coffeeshop][:name],
         capacity: params[:coffeeshop][:capacity],
         outdoor_seating: params[:coffeeshop][:outdoor_seating]
      })

      coffeeshop.save
      
      redirect_to "/coffeeshops/#{coffeeshop.id}"
   end

   def new
   
   end

   def edit
      @coffeeshop= Coffeeshop.find(params[:id])
   end

   def destroy
      Coffeeshop.destroy(params[:id])
      redirect_to '/coffeeshops'
   end
end

