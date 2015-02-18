require "simple_mvc/version"

module Simplemvc
    class Application
        #env["PATH_INFO"] = "/page/about" => PagesController.send(:about)
        #controller_cal, action = get_controller_and_action(env)
        #response = controller_class.new.send(action
        #)
        def call(env)
            
            if env["PATH_INFO"] == "/"
               return [302,{"Location"=>"/trigger_man/ages"},["there is nothing in the url"]]
            end
            
            if env["PATH_INFO"] == "/favicon.ico"
               return [500,[],[]]
            end

            controller_class, action = get_controller_class_and_action(env)
            response = controller_class.new.send(action)
            [200, {"content-type"=>"text/html"},[response]]
        end

        def get_controller_class_and_action(env)
            _,controller, action = env["PATH_INFO"].split("/")
            controller_class = controller.capitalize + "Controller"
            [Object.const_get(controller_class), action]
        end
    end
end

