class BeersController < ApplicationController

    def index
        @beers = Beer.all

        render json: {beers: @beers}
    end

    def show
        @beer = Beer.find(params[:id])

        render json: {beer: @beer}
    end
end
