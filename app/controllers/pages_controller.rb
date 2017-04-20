class PagesController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
    else
      @user = nil
    end
  end

  def admindashboard
    if user_signed_in?
      @user = current_user
    else
      @user = nil
    end

    @users = User.all
    @curriculums = Curriculum.all
    @comments = Comment.all
  end
end
