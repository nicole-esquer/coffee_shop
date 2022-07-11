class BaristasController < ApplicationController
   def index
      @baristas = Barista.all
   end

   def show
      @barista = Barista.find(params[:id])
   end
end