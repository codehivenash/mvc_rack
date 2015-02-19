class PagesController < Simplemvc::Controller
    def about
        render :about, name: "nash", lastname: "chikanda"
    end

    def tell_me
    	#curl http://localhost:9292/pages/tell_me?name=Freeedom\&fem=nashitude
        render :tell_me, name: params["name"], fem: params["fem"]
    end
end
