require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {FactoryGirl.build(:user)}
  context 'testing User model' do
    it 'User is ok' do
      expect(user.save).to eq(true)
    end
    it 'user has no name' do
      user.name=nil
      expect(user.save).to eq(false)
    end

    it 'user has no email' do
      user.mail=nil
      expect(user.save).to eq(false)
    end
    it 'user has no password' do
      user.password=nil
      expect(user.save).to eq(false)
    end

    it 'user has an invalid email' do
      user.mail="blabla"
      expect(user.save).to eq(false)  
    end

    it 'user is unique' do
      user.save
      user2=FactoryGirl.build(:user)
      expect(user2.save).to eq(false)
    end

    it{should have_many (:stories)} 

  end
end    