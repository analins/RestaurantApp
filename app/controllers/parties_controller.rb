class PartiesController < ApplicationController

  def index
    @parties = Party.all
    @party = Party.new
  end

  def create
    Party.create(party_params)
    redirect_to parties_path(party)
  end

  def show
    @party = Party.find(params[:id])
    @order = @party.orders.new
  end

  def destroy
    Party.delete(params[:id])
    redirect_to parties_path
  end

  private

  def party_params
    params.require(:party).permit(:name, :count)
  end

end
