class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @statistic = (@character.statistic || @character.build_statistic)
  end

  def new
    @character = Character.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(params[:character])
    if @character.save
      redirect_to(@character, :notice => 'Character was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      redirect_to(@character, :notice => 'Character was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to(characters_url)
  end

end
