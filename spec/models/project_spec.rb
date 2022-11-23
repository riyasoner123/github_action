require 'rails_helper'

RSpec.describe Project, type: :model do

      it "project title must be reuired"do
        is_expected.to validate_presence_of(:title) 
     end

     it "minimum lenght of the project title is 10" do
        is_expected.to validate_length_of(:title).is_at_least(10)
    end

    it "project category must be required" do
        is_expected.to validate_presence_of(:category)
    end
   
    it "project description is required" do
       is_expected.to validate_presence_of(:description)
    end

    it "minimum lenght of the project description is 15" do
        is_expected.to validate_length_of(:description).is_at_least(15)
    end

    it "active field is required" do
        is_expected.to validate_presence_of(:active)
    end

    it "project challenges is required" do
        is_expected.to validate_presence_of(:challenges)
     end
 
     it "minimum lenght of the project challenges is 15" do
         is_expected.to validate_length_of(:challenges).is_at_least(15)
     end

     it "start date is required" do
        is_expected.to validate_presence_of(:start_date)
    end

    it "end data is required" do
        is_expected.to validate_presence_of(:end_date)
    end

    it "duration is required" do
        is_expected.to validate_presence_of(:duration)
    end

    it "git url is required" do
        is_expected.to validate_presence_of(:git_url)
    end

    it "live url is required" do
        is_expected.to validate_presence_of(:live_url)
    end

    it "priority is required" do 
        is_expected.to validate_presence_of(:priority)
    end
 
   
  


end
  