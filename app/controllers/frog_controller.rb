class FrogController < ApplicationController
  # get '/frogs'  do
  #   # Write the code to get all frogs 
  #   # and send them to the index view listing all frogs.
  #   @frogs = Frog.all
  #   erb :'frogs/index'
  # end

  # post '/frogs' do
  #   # Write the code to save new frogs 
  #   # and redirect to the index view listing all frogs.
  #   Frog.create(params)
  #   redirect 'frogs'
  # end

  # get '/frogs/new' do
  #   @ponds = Pond.all
  #   # Write the code to send to the new form view.
  #   erb :'frogs/new'

  # end

  # get '/frogs/:id' do
  #   # binding.pry
  #   @frog = Frog.find(params[:id])
  #   erb :'frogs/show'
  #   # Write the code to find the correct frog
  #   # by id given in the url.
  #   # Then send them to the show view.

  # end

  # get '/frogs/:id/edit' do
  #   @frog = Frog.find(params[:id])
  #   erb :'frogs/edit'
  #   # Write the code to find the correct frog
  #   # by id given in the url.
  #   # Then send them to edit form view.

  # end

  # post '/frogs/:id/update' do
  #   frog = Frog.find(params[:id])
  #   frog.name = params[:name]
  #   frog.color = params[:color]
  #   frog.lives = params[:lives]
  #   frog.save
  #   redirect 'frogs'
  #   # Write the code to find the correct frog
  #   # and set it's attributes and save.
  #   # Then redirect to the index view listing all frogs.

  # end

  # get '/frogs/:id/destroy' do
  #   frog = Frog.find(params[:id])
  #   frog.destroy
  #   redirect 'frogs'
  #   # Write the code to find the correct frog
  #   # and destroy it.
  #   # Then redirect to the index view listing all frogs.

  # end

  # get '/frogs/:id/tadpoles/new' do
  #   @frog = Frog.find(params[:id])
  #   redirect '../tadpoles/index'
  #   # Write the code to find the correct frog
  #   # and redirect to new tadpole form view
    
  # end
end
