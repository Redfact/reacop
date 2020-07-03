require 'sendgrid-ruby'
include SendGrid

class SendMail

    def initialize(nom,email,objet,message)
    msg = "Message de"+message+"Mail:#{email}"
    puts "Sending mail"
    puts nom,email,objet,msg
    from = SendGrid::Email.new(email: "tantelyrandria@ymail.com")
    # reagencym@gmail.com
    to = SendGrid::Email.new(email:"reaimmo@yopmail.com")
    subject =objet
    content = SendGrid::Content.new(type: 'text/plain', 
    value: msg.concat(email))
    mail = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: 'SG.QL_h5_QXRsScHG5pA0U3hA.hHy9uFS33du1M0zGakls55kRDQ0b5sAu8BMSr6cDA60')
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
    

    end
    
end