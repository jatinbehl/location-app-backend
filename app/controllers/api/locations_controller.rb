class Api::LocationsController < ApplicationController

    def index
        @locations = Location.all
        render json: { results: @locations }.to_json, status: :ok
    end


    def create
        location = Location.create(location_params)

        if location.save
            render json: { results: location }.to_json, status: :ok
        else
            render error: {error: 'Failed to add location record'}, status: 400
        end
    end

    def show
        location = Location.find(params[:id])
        render json: { results: location }.to_json, status: :ok
    end

    def update
        location = Location.find(params[:id])
        location.update(location_params)
        if location.save
            render json: { results: location }.to_json, status: :ok
        else
            render error: {error: 'Failed to update location record'}, status: 400
        end
    end

    def destroy
        if Location.find(params[:id]).destroy
            render status: :ok
        else
            render error: {error: 'Failed to delete the location record'}, status: 400
        end

    end

    private

    def location_params
        params.require(:location).permit(:name, :lat, :lng, :status, :technicianDetails, :data)
    end
end
