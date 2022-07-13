class CoffeeshopBaristasController < ApplicationController
   def index
      @coffeeshop = Coffeeshop.find(params[:id])
      if params[:barista]
      hours_worked = params[:barista][:hours_worked]
      @baristas = @coffeeshop.filter_by_hours_worked(hours_worked_filter)
      elsif params[:alphabet]
         @baristas = @coffeeshop.sort_by_name
      else
         @baristas = @coffeeshop.baristas
      end
   end

   def create 
      @coffeeshop = Coffeeshop.find(params[:id])
      barista = Barista.new({
         name: params[:barista][:name],
         full_time: params[:barista][:full_time],
         hours_worked: params[:barista][hours_worked]
      })
      barista.save
      redirect_to "/coffeeshops/#{@coffeeshop.id}/baristas"
   end

   def new
      @coffeeshop = Coffeeshop.find(params[:id])
   end
end