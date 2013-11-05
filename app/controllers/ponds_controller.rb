require 'pry'
class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def show
    @pond = Pond.find(params[:id])
  end

  def new
  end

  def create
    pond = Pond.create(:name => params[:pond][:name], :water_type => params[:pond][:water_type])
    redirect_to action: "index"  
  end

  def edit

  end

  def update
    pond = Pond.find(params[:id])
    pond.name = params[:pond][:name]
    pond.water_type = params[:pond][:water_type]
    pond.save
    redirect_to action: "index"
  end

  def destroy
    pond = Pond.find(params[:id])
    pond.destroy
    redirect_to action: "index"
  end 
  
end
