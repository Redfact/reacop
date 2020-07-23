
var capacitefield = document.getElementById("capacite")


function VenteFunc(){
    console.log("click radio vente")
    capacitefield.classList.add('d-none')
}

function LocationFunc(){
    console.log("click radio location")
    capacitefield.classList.remove('d-none')
}