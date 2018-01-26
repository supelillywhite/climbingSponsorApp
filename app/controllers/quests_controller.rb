class QuestsController < ApplicationController
  def index
    @quest = Quest.all
  end

  def show
  end

  def edit
  end
end
