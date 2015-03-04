(function() {
  $("#header li[role='presentation']:first a").tab('show');

  $("#header li[role='presentation'] a").click(function(e) {
    e.preventDefault;
    return $(this).tab('show');
  });

}).call(this);
