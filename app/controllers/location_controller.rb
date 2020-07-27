class LocationController < ApplicationController

    skip_before_action :authorized

    def index
    end

    def create
        @locations = Location.all 
        location_ids = @locations.map { |l| l.id }
        render json: location_ids
    end

    def show

    end

    def edit
    end

    def destroy
    end
end
