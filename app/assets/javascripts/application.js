
$(document).ready(function() {
  $('.time_ago').each(function(i) {
    var time = moment($(this).text());
    $(this).text(time.fromNow());
    $(this).attr('title', time.format('DD/MM/YYYY, h:mm:ss a'));
  });
});

