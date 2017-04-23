require 'rails_helper'

describe Comment do
  #TODO - have to make it so that i can test with/without a user, but i don't know how to make the validation for it.
  # before :each do
  #   #Gives each comment a user
  #   test_user = FactoryGirl.build(:user)
  #   comment = FactoryGirl.build(:comment)
  #   comment.user = test_user
  # end

  it "has a valid factory" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  describe "validity without existence of an attribute" do
    # it "is invalid without a user" do
    #   comment.user = nil
    #   expect(comment).not_to be_valid
    # end
    it "is invalid without content" do
      expect(FactoryGirl.build(:comment, content: nil)).not_to be_valid
    end
  end

end
