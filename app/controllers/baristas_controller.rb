class BaristasController < ApplicationController
   def index
      @baristas = Barista.all
   end

   def show
   end
end