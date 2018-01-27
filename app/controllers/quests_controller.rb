class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :edit, :update, :destroy]
  
  def index
    @quest = Quest.all
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(quest_params)
    @quest.user_id = current_user.id
    if @quest.save
      redirect_to @quest, notice: "Your quest was created successfully."
    else
      render :new
    end
  end

  def show
    @quest = Quest.find(params[:id])
  end

  def edit
  end

  private

    def set_quest
      @quest = Quest.find(params[:id])
    end

    def quest_params
      params.require(:quest).permit(:name, :description, :user_id)
    end
end
