class TacosController < ApplicationController

    def new
        @taco = Taco.new
    end

    def create
        # @taco = current_user.ratings.build(taco_params)
        # if @taco.save
        #     redirect_to tacos_path
        # else
        #     render :new
        # end
        binding.pry
    end

    def index
        @tacos = Taco.all 
    end


    private

    def taco_params
        params.require(:taco).permit(:name)
    end
end
