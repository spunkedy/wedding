function initialize() {
    var mapOptions = {
        center: new google.maps.LatLng(29.966665,-98.912396),
        zoom: 16,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
        mapOptions);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(29.966665,-98.912396),
        map: map,
        title:"Hello World!"
    });
}
google.maps.event.addDomListener(window, 'load', initialize);