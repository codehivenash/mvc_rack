require "simple_mvc/version"
require "simple_mvc/controller.rb"
require "simple_mvc/utils.rb"
require "simple_mvc/dependencies.rb"
require "simple_mvc/router.rb"

module Simplemvc
    class Application
        #env["PATH_INFO"] = "/page/about" => PagesController.send(:about)
        #controller_cal, action = get_controller_and_action(env)
        #response = controller_class.new.send(action
        #)
        def call(env)
                       if env["PATH_INFO"] == "/favicon.ico"
               return [500,[],[]]
            end
            
  get_rack_app(env).call(env)
            #[200, {"content-type"=>"text/html"},[response]]
        end

       
      
    end
end

