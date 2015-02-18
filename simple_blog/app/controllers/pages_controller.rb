class PagesController < Simplemvc::Controller
    def about
        render :about, name: "nash", lastname: "chikanda"
    end
end
