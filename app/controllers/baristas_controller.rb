class BaristasController < ApplicationController
   def index
      @baristas = Barista.all
   end

   def show
      @barista = Barista.find(params[:id])
   end

   def update
      barista = Barista.find(params[:id])
      barista.update({
         name: params[:barista][:name],
         full_time: params[:barista][:full_time],
         hours_worked: params[:barista][:hours_worked]
      })
      
      barista.save

      redirect_to '/baristas'
   end

   def edit
      @barista = Barista.find(params[:id])
   end

   def destory
      Barista.destroy(params[:id])
      redirect_to '/baristas'
   end
end