require './config/application.rb'

map "/" do
  run HomeController.action(:index)
end

map "/pages" do
  map "/about" do
    run PagesController.action(:about)
  end
  map "/tell_me" do
    run PagesController.action(:tell_me)
  end
end



run Blog::Application.new

