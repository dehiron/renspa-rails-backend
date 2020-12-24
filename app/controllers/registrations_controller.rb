class RegistrationsController < ApplicationController

    def signup
        @user = User.new(registrations_params)

        if @user.save
            login!
            render json:{ status: :created, user: @user }
        else
            render json: { status: 500 }
        end

    end

    def sendMail
        @reservation = Reservation.new(reservations_params)
        NotificationMailer.send_confirmation_to_user(@reservation).deliver
    end

    private
        def registrations_params
            params.require(:user).permit(:email, :password_digest)
        end

        def reservations_params
            params.require(:reservation).permit(:name, :email, :startDate, :time, :numOfPeople)
        end


    # def signup
    #     @user = User.create(email:params[:email], password_digest: params[:password])
    #     render json: @user 
    # end

end