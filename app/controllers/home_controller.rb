class HomeController < ApplicationController
    def index
    end

    def menu
    end

    def reservation
    end

    def gallery
    end

    def about
    end

    def blog
    end

    def blog_detail
    end

    def contact
    end

    def search
        @pagy, @foods = pagy(Food.where("name like description ?", "%#{params[:search]}%", "%#{params[:search]}%"))
    end
end