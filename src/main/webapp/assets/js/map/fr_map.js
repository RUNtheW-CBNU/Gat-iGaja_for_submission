// Initialize and add the map
function initMap() {
    // The location of Uluru
    const uluru = { lat: 46.6178438845384, lng: 2.2664280962540104 };
    // The map, centered at Uluru
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 5,
        center: uluru,
        mapId: '496ebba00b2db789'
    });
    // The marker, positioned at Uluru

    //const myIcon = new google.maps.MarkerImage("assets/img/pin_icon(2).png");
    const marker = new google.maps.Marker({
        position: uluru,
        map: map,
       // icon: myIcon
    });


}

window.initMap = initMap;