require 'pry'
class FrogsController < ApplicationController
 
  def index
    @frogs = Frog.all
  end

  def show
    @frog = Frog.find(params[:id])
    @pond = @frog.pond
  end

  def new
    @ponds = Pond.all
  end

  def create
    binding.pry
    frog = Frog.create(:name => params[:frog][:name], :color => params[:frog][:color], :pond_id => params[:pond_id])
    redirect_to action: "index"  
  end

  def edit
    @ponds = Pond.all
  end

  def update
    frog = Frog.find(params[:id])
    frog.name = params[:frog][:name]
    frog.color = params[:frog][:color]
    frog.pond_id = params[:pond_id]
    frog.save
    redirect_to action: "index"
  end

  def destroy
    frog = Frog.find(params[:id])
    frog.destroy
    redirect_to action: "index"
  end 
end
