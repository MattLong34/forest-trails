class TrailsController < ApplicationController
    def index
        @trails = Trail.all

        render json: @trails
    end

    def show
        @trail = Trail.find(params[:id])

        render json: @trail
    end

    def create
        @trail = Trail.create(name: params[:name], miles: params[:miles], forest_id: params[:forest_id])

       render json: @trail
    end

    def update
        @trail = Trail.find(params[:id])
        @trail.update(name: params[:name], miles: params[:miles])

        render json: "#{@trail.name} has been updated!"
    end

    def destroy
        @trail = Trail.find(params[:id])
        @trail.destroy

        render json: "#{@trail.name} has been deleted!"
    end
end
