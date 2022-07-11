require 'rails_helper'

RSpec.describe Coffeeshop, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :capacity }
  end

   describe 'relationships' do
  	it { should have_many :employees }
  end
end