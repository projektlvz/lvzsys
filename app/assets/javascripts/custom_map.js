window.onload = function() {
    handler = Gmaps.build('Google');
    handler.buildMap({provider: {}, internal: {id: 'map'}}, function () {
        handler.map.centerOn({ lat: 52.5125394, lng: 13.3421765 })
        var markers = null;
        $.get( "/get_shops", function() {})
            .done(function(shops_json) {
                markers = handler.addMarkers(shops_json);
                handler.bounds.extendWith(markers);
                handler.fitMapToBounds();
            })
            .fail(function() {
                alert( "error" );
            });
    });
};
