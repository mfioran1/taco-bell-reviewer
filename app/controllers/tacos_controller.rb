class TacosController < ApplicationController

    def new
        @taco = Taco.new
    end

    def create
        # @taco = current_user.tacos.build(taco_params)
        # if @taco.save
        #     redirect_to taco_path
        # else
        #     render :new
        # end
        binding.pry
    end

    def index
        @tacos = Taco.all 
    end

    def show
        @taco = Taco.find_by_id(params[:id])
    end


    private

    def taco_params
        params.require(:taco).permit(:name, :category_id)
    end
end
