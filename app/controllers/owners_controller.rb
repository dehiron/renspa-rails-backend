class OwnersController < ApplicationController
    def index
        @owner = Owner.all
        render json:@owner
    end

    def create
        Owner.create(owners_params)
        return render_400 if status == 400
        render json: {status: 200, message: 'User is created.'}, status: 200
    end 

    def update
        @owner = Owner.find(params[:id])
        @owner.update_attributes(name: params[:name])
        render json: {status: 200, message: 'information is updated.'}, status: 200
    end

    def destroy
        @owner = Owner.find(params[:id])
        if @owner.destroy
            head :no_content, status: :ok
        else
            render json: @owner.error, status: :unprocessable_entity
        end
    end

        private

        def owners_params
            params.permit(:name, :email)
            # @owner = Owner.create(name: params[:name])
            # render json:@owner
        end

end
