require 'mailjet'

class SendMail
    attr_accessor :nom , :email , :objet , :message
    def initialize(nom,email,objet,message)
        @nom=nom
        @email=email
        @objet=objet
        @message=message
    end

    def mailjet
        Mailjet.configure do |config|
            config.api_key = ENV['MJ_APIKEY_PUBLIC']
            config.secret_key = ENV['MJ_APIKEY_PRIVATE']
            config.api_version = "v3.1"
          end
          variable = Mailjet::Send.create(messages: [{
              'From'=> {
                  'Email'=> 'no_reply@reagency-mada.com',
                  'Name'=> 'Rea'
              },
              'To'=> [
                  {
                      'Email'=> @email,
                      'Name'=> @nom
                  }
              ],
              'Subject'=> @objet,
              'TextPart'=> @message,
              'HTMLPart'=> '<h3>Rea , le partenaire qui est là . <a href="www.reagency-mada.com">reagency-mada</a>!</h3><br />'
          }]
          )
          p variable.attributes['Messages']
    end
    
end