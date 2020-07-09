require 'mailjet'
require 'sendgrid-ruby'
include SendGrid

class SendMail
    attr_accessor :nom , :email , :objet , :message
    def initialize(nom,email,objet,message)
        @nom=nom
        @email=email
        @objet=objet
        @message=message
    end

    def sendgrid
        msg= 
"Message de #{@nom.upcase} :
                
#{@message}
              
Adresse email : #{@email}"
    
        puts "Sending mail"
        puts @nom,@email,@objet,@msg
        from = SendGrid::Email.new(email: "no_reply@reagency-mada.com")
        #reagencym@gmail.com
        to = SendGrid::Email.new(email:@email)
        subject =" #{@objet}"
        content = SendGrid::Content.new(type: 'text/plain', 
        value: msg )
        mail = SendGrid::Mail.new(from, subject, to, content)
        
        sg = SendGrid::API.new(api_key: 'SG.QL_h5_QXRsScHG5pA0U3hA.hHy9uFS33du1M0zGakls55kRDQ0b5sAu8BMSr6cDA60')
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        puts response.status_code
        puts response.body
        puts response.headers
 
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