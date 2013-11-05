require 'pry'
class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def show
    @pond = Pond.find(params[:id])
  end

  def new
    # pond = Pond.create(params)
    # redirect_to @pond
  end

  def create
    pond = Pond.create(:name => params[:pond][:name], :water_type => params[:pond][:water_type])
    redirect_to action: "index"  
  end
  # get '/ponds'  do
  #   # Write the code to get all ponds 
  #   # and send them to the index view listing all ponds.
  #   @ponds = Pond.all
  #   erb :'ponds/index'
  # end

  # post '/ponds' do
  #   # Write the code to save new ponds 
  #   # and redirect to the index view listing all ponds.
  #   Pond.create(params)
  #   # erb :'ponds/new'
  #   redirect "/ponds"
  # end

  # get '/ponds/new' do
  #   # Write the code to send to the new form view. 
  #   erb :'ponds/new'
  # end

  # get '/ponds/:id' do
  #   @pond = Pond.find(params[:id])
  #   erb :'ponds/show'
  #   # Write the code to find the correct pond
  #   # by id given in the url.
  #   # Then send them to the show view.


  # end

  # get '/ponds/:id/edit' do
  #     @pond = Pond.find(params[:id])
  #     erb :'ponds/edit'
  #   # Write the code to find the correct pond
  #   # by id given in the url.
  #   # Then send them to edit form view.

  # end

  # post '/ponds/:id/update' do
  #   pond = Pond.find(params[:id])
  #   pond.name = params[:name]
  #   pond.water_type = params[:water_type]
  #   pond.save
  #   redirect 'ponds'
  #   # Write the code to find the correct pond
  #   # and set it's attributes and save.
  #   # Then redirect to the index view listing all ponds.
    
  # end

  # get '/ponds/:id/destroy' do
  #   pond = Pond.find(params[:id])
  #   pond.destroy
  #   redirect 'ponds'
  #   # Write the code to find the correct pond
  #   # and destroy it.
  #   # Then redirect to the index view listing all ponds.
    
  # end
  
end
