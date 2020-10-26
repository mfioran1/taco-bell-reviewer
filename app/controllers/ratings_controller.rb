class RatingsController < ApplicationController

    def new
        @rating = Rating.new
    end

    def create
        # @rating = current_user.ratings.build(rating_params)
        # # @rating = Rating.new(rating_params)
        # if @rating.save
        #     redirect_to ratings_path
        # else
        #     render :new
        # end
        binding.
    end

    def index
        @ratings = Rating.all 
    end

    def show
        @rating = Rating.find_by(id: params[:id])
    end

    def edit
        @rating = Rating.find_by(id: params[:id])
    end

    



 private
        def rating_params
            params.require(:rating).permit(:taste, :comments, :rating)
        end
end
