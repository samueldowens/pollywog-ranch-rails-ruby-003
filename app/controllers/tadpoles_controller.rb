require 'pry'
class TadpolesController < ApplicationController

  def index
      @tadpoles = Tadpole.all
  end

  def show
    @tadpole = Tadpole.find(params[:id])
  end

  def new
    @frogs = Frog.all
  end

  def create
    frog = Frog.find(params[:frog_id])
    tadpole = Tadpole.create(:name => params[:tadpole][:name], :color => frog.color, :frog_id => params[:frog_id])
    redirect_to action: "index"  
  end

  def edit
    @frogs = Frog.all
    @ponds = Pond.all
  end

  def update
    tadpole = Tadpole.find(params[:id])
    tadpole.name = params[:tadpole][:name]
    tadpole.color = params[:tadpole][:color]
    tadpole.frog_id = params[:frog_id]
    tadpole.save
    redirect_to action: "index"
  end

  def destroy
    tadpole = Tadpole.find(params[:id])
    tadpole.destroy
    redirect_to action: "index"
  end 

  def evolve
    tadpole = Tadpole.find(params[:id])
    parent = Frog.find(tadpole.frog_id)
    newfrog = Frog.create(:name => tadpole.name, :color => tadpole.color, :pond_id => parent.pond_id)
    tadpole.destroy
    redirect_to action: "index"
  end

end
