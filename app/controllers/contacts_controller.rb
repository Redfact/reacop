require 'send_mail'
class ContactsController < ApplicationController

  def show
    @commit=params[:commit]
    if( @commit.eql?("Envoyer") )
      @commit=true
      @validate_mail=false
      @email= params['/contactez_nous'][:email]
      @nom=params['/contactez_nous'][:nom]
      @objet=params['/contactez_nous'][:objet]
      @message=params[:message]
      puts "Values".colorize(:green) , @commit , @email, @nom,@objet,@message
      if( !@email.empty? && !@nom.empty? && !@message.empty? )then
        @validate=true
        SendMail.new(@nom,@email,@objet,@message).sendgrid
      end
    end
  end

end
