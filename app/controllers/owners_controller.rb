class OwnersController < ApplicationController
    def index
        @owner = Owner.all
        render json:@owner
    end

    def create
        @owner = Owner.create(name: params[:name])
        render json:@owner
    end

    def update
        @owner = Owner.find(params[:id])
        @owner.update_attributes(name: params[:name])
        render json: @owner
    end

    def destroy
        @owner = Owner.find(params[:id])
        if @owner.destroy
            head :no_content, status: :ok
        else
            render json: @owner.error, status: :unprocessable_entity
        end
    end
end
