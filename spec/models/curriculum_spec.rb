require 'rails_helper'

describe Curriculum do

  it "has a valid factory" do
    expect(FactoryGirl.build(:curriculum)).to be_valid
  end

  describe "validity without existence of an attribute" do
    it "is invalid without a title" do
      expect(FactoryGirl.build(:curriculum, title: nil)).not_to be_valid
    end

    it "is invalid without content" do
      expect(FactoryGirl.build(:curriculum, content: nil)).not_to be_valid
    end
    it "is invalid without a grade" do
      expect(FactoryGirl.build(:curriculum, grade: nil)).not_to be_valid
    end

    it "is invalid without subject" do
      expect(FactoryGirl.build(:curriculum, subject: nil)).not_to be_valid
    end
  end
end
