class CoffeeshopsController < ApplicationController
   def index
      @coffeeshops = Coffeeshop.all
   end
end