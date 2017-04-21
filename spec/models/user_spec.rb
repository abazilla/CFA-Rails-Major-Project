require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end
  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
  end
  it "is invalid without a password" do
    expect(FactoryGirl.build(:user, password: nil)).not_to be_valid
  end
  it "is invalid when email is already in use" do
    FactoryGirl.build(:user, email: "admin@admin.com").save!
    expect(FactoryGirl.build(:user, email: "admin@admin.com")).not_to be_valid
  end
  it "returns a contact's full name as a string" do
    contact = FactoryGirl.build(:user, first_name: "John", last_name: "Doe")
    expect(contact.name).to eq("John Doe")
  end
end

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


# require 'pry'; binding.pry
