class StoryController < ApplicationController
  respond_to :html, :json
  def show
  	@user=User.first
    @user_story=@user.stories
    render :user_stories, status: 200
  end
end
