# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gem 'faker'

User.destroy_all
Message.destroy_all
Favori.destroy_all
Annonce.destroy_all
AnInteressant.destroy_all
10.times{
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(nom:last_name , prenom:first_name ,email:Faker::Internet.email , password:"123456")

    Annonce.create(
    lieu:Faker::Address.city,
    prix:"#{rand(100..100000)} AR",
    description:Faker::Hipster.paragraph(sentence_count: 3),
    capacite:rand(1..5)
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

}

