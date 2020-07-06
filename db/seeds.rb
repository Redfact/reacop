gem 'faker'

User.destroy_all
Message.destroy_all
Favori.destroy_all
Avatar.destroy_all 
Annonce.destroy_all
AnInteressant.destroy_all

images =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQI0T8x1fGCe2OF4Wq5S5X6-k8A2H49yOvzEg&usqp=CAU",
    "https://media-cdn.tripadvisor.com/media/vr-splice-j/00/f0/53/03.jpg",
    "https://barak-a.com/wp-content/uploads/2019/04/SALON-2.png",
    "https://medias-neuf-be.avendrealouer.fr/Image/programme-neuf_4644447_D.jpg",
    "https://www.eiffage-immobilier.fr/files/live/sites/eiffage-immo/files/contributed/visuel2018/appartement-neuf-vitruve-capingheim-slider1.jpg",
    "https://www.urbat.com/medias/programmes/images/384_GILIBERT/programme-neuf-marseille-pavillon-9-384_TD_05_1_xl.jpg",
    "https://bonaparte-promotion.fr/sites/default/files/styles/head_xs/public/programmes/2_e_element_marseille_appartement_neuf_1.png?itok=OZ2saOQO",
    "https://q-xx.bstatic.com/images/hotel/max1024x768/360/36001122.jpg",
    "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
]

# Temporary admin
User.create(nom:"Randria", prenom:"Tantely" ,email:"tantelyrandria@ymail.com" , password:"123456",admin: true)

10.times{
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(nom:last_name , prenom:first_name ,email:Faker::Internet.email , password:"123456")
    cap= rand(1..5)
    Annonce.create(
    lieu:Faker::Address.city,
    loyer_total:rand(1000..100000),
    loyer_partiel:rand(100..1000),
    description:Faker::Hipster.paragraph(sentence_count:10),
    capacite:cap,
    place_libre:rand(1..cap),
    contrat_partiel: [true,false].sample,
    typeBien: rand(0..1),
    typeVente: rand(0..1),
    AlaUne:[true,false].sample,
    created_at: rand((DateTime.now - 3.months)..DateTime.now+3.months)
    )

    Message.create(
        contenu:Faker::Hipster.paragraph(sentence_count: 3),
        user_id: User.ids.sample
    )

    Favori.create(
        annonce_id: Annonce.ids.sample,
        user_id: User.ids.sample
    )    
    
    AnInteressant.create(
        annonce_id: Annonce.ids.sample,
        user_id: User.ids.sample
    )
    Avatar.create(
        url: Faker::Avatar.image,
        user_id: Annonce.ids.sample
    )
}

Annonce.all.each do |an|
    rand(3..5).times{
        Photo.create(
            url: images.sample,
            annonce_id: an.id
        )
    }
end 

   
  
