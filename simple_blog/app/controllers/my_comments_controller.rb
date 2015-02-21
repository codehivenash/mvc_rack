class MyCommentsController < Simplemvc::Controller
    def index
        render(:index, name: "my", lastname: "comments")

    end
  
end
