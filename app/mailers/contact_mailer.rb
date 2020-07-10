class ContactMailer < ApplicationMailer
    def transmit_email(nom,email,message)
        @nom=nom
        @email=email
        @message = message
        mail(from: "no_reply@reagency-mada.com", to:"reagencym@gmail.com",
             subject: "Mail client")
    end 
end
