class HomeController < ApplicationController
    before_action :authenticate_user!, only: %i[search  menu reservation blog_detail]
    
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
        @pagy, @foods = pagy(Food.includes(:categories).where("foods.name LIKE ?", "%#{params[:search]}%"))

        if params[:category_id].present?
            @foods = @foods.where(categories: { id: params[:category_id] })
        end
        if params[:price_id] == "High to Low"
            @foods = @foods.order(price: :desc)
        elsif params[:price_id] == "Low to High"  
            @foods = @foods.order(:price)
        else
            @foods = @foods.order(:name)
        end
    end
end