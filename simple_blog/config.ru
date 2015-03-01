require './config/application.rb'

app = Blog::Application.new

app.route do
  match "/", "home#index"
  match "/:controller/:action"
end


run app

