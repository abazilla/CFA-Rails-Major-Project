require 'rails_helper'

describe School do

  it "has a valid factory" do
    expect(FactoryGirl.build(:school)).to be_valid
  end

  describe "validity without existence of an attribute" do

    it "is invalid without a name" do
      expect(FactoryGirl.build(:school, name: nil)).not_to be_valid
    end
    
    it "is invalid without a location" do
      expect(FactoryGirl.build(:school, location: nil)).not_to be_valid
    end

  end

end
