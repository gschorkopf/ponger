class MatchesController < ApplicationController
  def index
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params[:match])
    
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.' }
    else
      render action: "new" 
    end
  end
end
