require 'imgurapi'
class Upload
    attr_accessor :account , :session
    def initialize
        @session = imgur_session = Imgurapi::Session.instance(client_id: '8129b215ad04853', 
            client_secret: '8d4814948b83244752884f58ee77db333036b099', 
            refresh_token: '5a4c837492f00f16c167925ba804d619cca4fc0c',
            access_token: 'ea1b334fcfe6d6617f7499aeb7564b9c3dec4575')
        @account = @session.account
    end

    # Warning , upload image but not on you imgur account
    def file(path)
        client = Imgur.new('8129b215ad04853')

        image = Imgur::LocalImage.new(path, title: 'Awesome photo')

        uploaded = client.upload(image)

        album = client.new_album(uploaded, title: 'MyAlbum')

        puts uploaded.link , uploaded.id
        puts album.link , album.id   
    end

    
    def image(path)
       if( @session != nil)
           image=@session.image.image_upload(path)
       end
       return image
    end

end