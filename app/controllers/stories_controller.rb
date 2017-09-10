class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def new
    @user = User.find(params[:user_id])
    @story = Story.new
  end

  def create
    @user = User.find(params[:user_id])
    @story = Story.create(story_params)
    redirect_to user_story_path(@user, @story)
  end

  def show
    @user = User.find(params[:user_id])
    @story = Story.find(params[:id])
  end


  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update
    redirect_to user_story_path(@user, @story)
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  private

  def story_params
    params.require(:story).permit(:name_1, :verb_1, :adj_1, :adv_1, :fam, :name_2, :number, :verb_2, :noun_1, :mil_rank, :adj_2, :adj_3, :adj_4, :noun_2, :award, :adj_5, :name_3, :verb_3, :noun_3, :verb_4, :adj_6, :verb_5, :verb_6, :emotion, :name_4, :picture)
  end
end
