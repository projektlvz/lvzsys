var markers = null;

window.onload = function() {
    // Spinner is created during map creation. Removed when the map is ready.
    $('.double-bounce1').remove();
    $('.double-bounce2').remove();
    $('#map_spinner').removeClass('spinner');
    
    // Initial map build and markers for all shops.
    handler = Gmaps.build('Google');
    handler.buildMap({provider: {}, internal: {id: 'map'}}, function () {
        handler.map.centerOn({ lat: 52.5125394, lng: 13.3421765 });
        $.get( "/get_shops", function() {})
            .done(function(shops_json) {
                markers = handler.addMarkers(shops_json);
                handler.bounds.extendWith(markers);
                handler.fitMapToBounds();
            })
            .fail(function() {
                console.log( "Error retrieving basic shops list." );
            });
    });
};

// Gather data from all search controls(tags, category, etc.).
function GetFormData(){
    var data = {};
    data.shop_category = $( "#s_shop_category").val();
    data.features = [];
    var checkbox_data = $("input[id*='s_']:checked");
    checkbox_data.each(function(x){
        data.features.push($(checkbox_data[x]).attr("id").substring(2))
    });
    data.location = $("#s_city").val();
    return {search_params: data};
}

// Calls the server to filter shops. Updates map markers.
function RetrieveShops(){
    $.get( "/get_shops", GetFormData())
        .done(function(shops_json) {
            handler.removeMarkers(markers);
            markers = handler.addMarkers(shops_json);
            handler.bounds.extendWith(markers);
        })
        .fail(function() {
            console.log( "Error retrieving filtered shops list." );
        });
}
