function setScore(score, post_id, giver_id){
    $.post( "/post/score",{ score: score, post_id: post_id, giver_id: giver_id }, function() {
        $('#'+score).height(50).width(50);
        window.setTimeout(function() {$('#'+score).height(34).width(34);}, 1000);

    }).fail(function() {

    });
}