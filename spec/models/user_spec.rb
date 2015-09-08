require 'rails_helper'

RSpec.describe User, type: :model do
  # it {should validate_presence_of :name}
  # it {should validate_presence_of :email}
  # it {should validate_presence_of :password}
  # it {should validate_presence_of :salt}
  # it {should_not allow_value("dasdasdska.com").for(:email)}
  # it {should allow_value("prueba@e.com").for(:email)}
  it { should have_many(:articles) }

  describe "Users fields shouldn't be empty" do
    it 'User should have a name' do
      user = FactoryGirl.build(:no_name)
      expect(user.save).to eql(false)
    end

    it 'User should have an email' do
      user = FactoryGirl.build(:no_email)
      expect(user.save).to eql(false)
    end

    it 'User should have a password' do
      user = FactoryGirl.build(:no_pass)
      expect(user.save).to eql(false)
    end

    it "User salt shouldn't be empty" do
      user = FactoryGirl.create(:user)
      expect(user.valid?).to be true
    end
  end

  it "User's email should be unique" do
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.build(:user)
    expect(user2.save).to eq(false)
  end

  it "Email's format should be contain @ and ." do
    user = FactoryGirl.build(:bad_email)
    expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
