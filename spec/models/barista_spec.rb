require 'rails_helper'

RSpec.describe Barista, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :full_time }
    it { should validate_presence_of :hours_worked } 
  end

   describe 'relationships' do
    it { should belong_to :coffeeshop }
  end
end
