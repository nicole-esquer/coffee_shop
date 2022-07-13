require 'rails_helper'

RSpec.describe Barista, type: :model do
  describe 'validations' do
    xit { should validate_presence_of (:name) }
    xit { should validate_presence_of (:hours_worked) } 
  end

   describe 'relationships' do
    xit { should belong_to (:coffeeshop) }
  end
end

