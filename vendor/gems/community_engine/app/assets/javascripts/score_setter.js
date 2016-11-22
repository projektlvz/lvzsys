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
function setForumScore(post_id, giver_id){
    $.post( "/sb_post/score",{ post_id: post_id, giver_id: giver_id }, function() {
        $('#like-div-' + post_id).toggleClass('selected_grade');
    }).fail(function() {

    });
}
