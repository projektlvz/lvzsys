function setScore(score, post_id, giver_id){
    $.post( "/post/score",{ score: score, post_id: post_id, giver_id: giver_id }, function() {
        [
            $('#like-div'),
            $('#dislike-div'),
            $('#superlike-div')
        ].forEach(function(x){
            x.removeClass('selected_grade')
        });
        $('#'+score + '-div').addClass('selected_grade');
    }).fail(function() {

    });
}