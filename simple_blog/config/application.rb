require 'simple_mvc'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

require "pages_controller"
require "my_comments_controller"

module Blog
    class Application < Simplemvc::Application
    
    end
end
