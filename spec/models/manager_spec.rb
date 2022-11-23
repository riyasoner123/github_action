require 'rails_helper'

RSpec.describe Manager, type: :model do
   it "manager name must be required" do
    is_expected.to validate_presence_of(:email)
   end

   it "manager name is required " do
      is_expected.to validate_presence_of(:name)
   end
   it "manager password uis required" do

    is_expected.to validate_presence_of(:password )
  end

  it "password must be confirmable" do
    is_expected.to validate_confirmation_of(:password)
  end

  it "contact must be required" do
    is_expected.to validate_presence_of(:contact)
  end

end 
