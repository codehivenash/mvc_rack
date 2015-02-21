class PagesController < Simplemvc::Controller
  attr_reader :name, :lastname, :fem  

  def about
    @name     = "Fandango"
    @lastname = "Grim"
    #render :about, name: "nash", lastname: "chikanda"
  end

  def tell_me
    #curl http://localhost:9292/pages/tell_me?name=Freeedom\&fem=nashitude 
    #render :tell_me, name: params["name"], fem: params["fem"]
    #if the action is empty the render method with the action as the parameter so it wont be nil body response.
    @name = "Fem"
    @fem = params['fem']

  end
end
