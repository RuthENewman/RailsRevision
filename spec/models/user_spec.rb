require 'rails_helper'

RSpec.describe User, type: :model do
    context 'validation tests' do 
      it 'ensures first name presence' do
        user = User.new(last_name: 'Newman', email: 'testemail@email.com').save
        expect(user).to eq(false)
      end 

      it 'ensures last name presence' do
        user = User.new(first_name: 'Ruth', email: 'testemail@email.com').save
        expect(user).to eq(false)
      end

      it 'ensures email presence' do
        user = User.new(first_name: 'Ruth', last_name: 'Newman').save
        expect(user).to eq(false)
      end 

      it 'should save correctly' do 
        user = User.new(first_name: 'Ruth', last_name: 'Newman', email: 'testemail@email.com').save
        expect(user).to eq(true)
      end

    end
    context 'scope tests' do 

    end
end
