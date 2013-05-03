class BracketsController < ApplicationController
  def new
    @bracket = Bracket.new
  end

  def create
    @bracket = Bracket.new(params[:bracket])

    if @bracket.save
      redirect_to @bracket, notice: 'Bracket was successfully created.'
    else
      render action: "new"
    end
  end
end
