class Api::LocationsController < ApplicationController
    # GET /movies
    def show
        @locations = Location.all
        render json: @locations
    end

    # POST /movies
    def create
        @location = Location.new(location_params)

        if @location.save
            render json: @location
        else
            render error: {error: 'Failed to add location record'}, status: 400
        end
    end

    private

    def location_params
        params.require(:location).permit(:name, :lat, :lng, :status, :technicianDetails, :data)
    end
end
