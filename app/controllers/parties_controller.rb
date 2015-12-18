class PartiesController < ApplicationController

  def index
    @parties = Party.all
    @party = Party.new
  end

  def create
    Party.create(parties_params)
    redirect_to parties_path
  end

  private

  def party_params
    params.require(:party).permit(:name, :count)
  end

end
