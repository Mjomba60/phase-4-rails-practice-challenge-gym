class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response

    def show
        render json: Gym.find(params[:id]), status: :ok
    end

    private

    def record_not_found_response
        render json: {error: "Gym not found"}, status: :not_found
    end
end
