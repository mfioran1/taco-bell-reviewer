class RatingsController < ApplicationController

    def new
        @rating = Rating.new
    end

    def create
        @rating = current_user.ratings.build(rating_params)
        if @rating.save
            redirect_to ratings_path
        else
            render :new
        end
    end


 private
        def rating_params
            params.require(:rating).permit(:taste, :comments)
        end
end
