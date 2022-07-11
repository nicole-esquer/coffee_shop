class CoffeeshopsController < ApplicationController
   def index
      @coffeeshops = Coffeeshop.all
   end

   def show
   end
end