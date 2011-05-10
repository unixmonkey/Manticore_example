class StatisticsController < ApplicationController

  def create
    @character = Character.find(params[:character_id])
    @statistic = @character.create_statistic(params[:statistic])
    redirect_to character_path(@character), :notice => 'Statistic was successfully created.'
  end

  def update
    @character = Character.find(params[:character_id])
    @statistic = @character.statistic
    if @statistic.update_attributes(params[:statistic])
      redirect_to character_path(@character), :notice => 'Statistic was successfully updated.'
    else
      render :action => "edit"
    end
  end

end
