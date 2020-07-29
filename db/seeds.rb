gem 'faker'

User.destroy_all
Message.destroy_all
Annonce.destroy_all
Photo.destroy_all

an1 = Annonce.create(
    lieu:"Ambatobe",
    loyer_total:250000000,
    loyer_partiel:0,
    description:
"Bel appartement non meublé avec une surface habitable de 42m2, situé dans une résidence calme et sécurisée à Ambatobe Panoramique, au 1er étage d‘un immeuble, composé de : 
- un living donnant sur un balcon
- une chambre à coucher 
- une cuisine 
- une salle d‘eau",
    capacite:0,
    place_libre:0,
    contrat_partiel:false,
    typeBien:0,
    typeVente:0,
    AlaUne:true,
    created_at: Date.new(2020,7,25),
    devise: 0
)
photos1 = [
    "https://i.imgur.com/Qa6wAcw.jpg",
    "https://i.imgur.com/pev4hjv.jpg",
    "https://i.imgur.com/KvoqYeR.jpg",
    "https://i.imgur.com/npi1KP2.jpg",
]
photos1.each do |url|
    Photo.create(
        url:url,
        annonce_id: an1.id
    )
end




an2 = Annonce.create(
    lieu:"Faravohitra",
    loyer_total:1400000,
    loyer_partiel:0,
    description:
"Un bel appartement meublé, équipé de box Internet et de décodeur Canal + . 
Fonctionnel pour les étudiants, jeunes professionnels ou jeunes couples. 
Situé à Faravohitra, en plein cœur de la ville, en bord de route, au premier étage d‘un Immeuble. Composé de :
- Un petit Living
- Une petite cuisine 
- Une chambre 
- Une salle d’eau",
    capacite:1,
    place_libre:0,
    contrat_partiel:false,
    typeBien:0,
    typeVente:1,
    AlaUne:true,
    created_at: Date.new(2020,7,12),
    devise: 0
)
photos2 = [
    "https://i.imgur.com/c6CVc3Y.jpg",
    "https://i.imgur.com/uYUKwQG.jpg",
    "https://i.imgur.com/Az6ehoN.jpg",
    "https://i.imgur.com/OfOfE0U.jpg",
]
photos2.each do |url|
    Photo.create(
        url:url,
        annonce_id: an2.id
    )
end

an3 = Annonce.create(
    lieu:"Mandrimena Andoharanofotsy",
    loyer_total:600000,
    loyer_partiel:0,
    description:
"Un bel appartement dans un espace convivial et sécurisé, situé à Mandrimena Andoharanofotsy en 1er plan au 1er étage d’un immeuble. L’appartement est composé de :
- Trois(03) chambres
- Un living
- Une cuisine aménagée
- Une salle d’eau
- Un parking pour une voiture",
    capacite:3,
    place_libre:0,
    contrat_partiel:false,
    typeBien:0,
    typeVente:1,
    AlaUne:true,
    created_at: Date.new(2020,7,14),
    devise: 0
)
photos3 = [
    "https://i.imgur.com/zHxJxbq.jpg",
    "https://i.imgur.com/EDjVBOW.jpg",
    "https://i.imgur.com/QMaSKE1.jpg",
    "https://i.imgur.com/fAZXPU3.jpg",
    "https://i.imgur.com/MwhBLUA.jpg"
]
photos3.each do |url|
    Photo.create(
        url:url,
        annonce_id: an3.id
    )
end

an4 = Annonce.create(
    lieu:"Ambondrona",
    loyer_total:1400000,
    loyer_partiel:0,
    description:
"Un ravissant appartement atypique dans un esprit loft, meublé et équipé de box internet et de décodeur canal + qui sont déjà inclus dans le loyer.
L’appartement est situé à Ambondrona, en pleine ville, en bord de route . Parfait pour les étudiants, jeune couple, jeune professionnel.
Ce bien comprend :
- Un living
- Une petite cuisine
- Une chambre
- Une salle d‘eau",
    capacite:1,
    place_libre:0,
    contrat_partiel:false,
    typeBien:0,
    typeVente:1,
    AlaUne:true,
    created_at: Date.new(2020,7,15),
    devise: 0
)
photos4 = [
    "https://i.imgur.com/mLiVnwC.jpg",
    "https://i.imgur.com/NKivbYk.jpg",
    "https://i.imgur.com/eSoaTjJ.jpg",
    "https://i.imgur.com/Z64VvNW.jpg",
    "https://i.imgur.com/wY8CFMy.jpg",
    "https://i.imgur.com/9Po67TJ.jpg"
]
photos4.each do |url|
    Photo.create(
        url:url,
        annonce_id: an4.id
    )
end

an5 = Annonce.create(
    lieu:"Faravohitra",
    loyer_total:1100000,
    loyer_partiel:0,
    description:
"Un petit studio très chaleureux meublé, équipé de box Internet et de décodeur Canal + .
Fonctionnel pour les étudiants, jeunes professionnels ou jeunes couples.
Situé à Faravohitra, en plein cœur de la ville, en bord de route. Composé de :
- Une petite cuisine
- Une chambre
- Une salle d’eau",
    capacite:1,
    place_libre:0,
    contrat_partiel:false,
    typeBien:0,
    typeVente:1,
    AlaUne:true,
    created_at: Date.new(2020,7,15),
    devise: 0
)
photos5 = [
    "https://i.imgur.com/o9kRErp.jpg",
    "https://i.imgur.com/9eWKpP7.jpg",
    "https://i.imgur.com/RoKuSSj.jpg",
    "https://i.imgur.com/ZTdoOz1.jpg",
]
photos5.each do |url|
    Photo.create(
        url:url,
        annonce_id: an5.id
    )
end


   
  
