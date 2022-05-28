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
        @pagy, @foods = pagy(Food.includes(:categories).where("foods.name LIKE ?", "%#{params[:search]}%").order(:name))

        # @foods = Food.where( { id: params[:pr     ice_id] }).order(:price) if params[:price_id].present?

        if params[:category_id].present?
            @foods = @foods.where(categories: { id: params[:category_id] })
        end
        # if params[:price_id] == "High to Low"
        #     @foods = @foods.order(:price)
        # else    
        #     @foods = @foods.order(price: :desc)
        # end
    end
end