class NotificationMailer < ActionMailer::Base
    default from: "renspa.reservation@gmail.com"

    def send_confirmation_to_user(reservation)
        @reservation= reservation
        mail(
            subject: "【Renspa】お客様の予約が完了しました。",
            to: @reservation.email
        )
    end
end
