class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def index
end
#   ####pasted from sinatra
#     configure :development do
#     register Sinatra::Reloader
#   end

#   set :public_folder, Proc.new { File.join(root, "../assets/") }
#   set :views, Proc.new { File.join(root, "../views/") }

# ####### Root #######

#   get '/'  do
#     erb :index
#   end

#   ####end pasted from sinatra
end
