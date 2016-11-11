function setScore(score, post_id, giver_id){
    $.post( "/post/score",{ score: score, post_id: post_id, giver_id: giver_id }, function() {
        alert( "success" );
    }).fail(function() {
        alert( "error" );
    });
}