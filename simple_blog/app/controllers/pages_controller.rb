class PagesController < Simplemvc::Controller
    def about
        render :about, name: "nash", lastname: "chikanda"
    end

    def tell_me
        render :tell_me, name: params["name"]
    end
end
