(function() {
  $("#header li[role='presentation']:first a").tab('show');

  $("#header li[role='presentation'] a").click(function(e) {
    e.preventDefault;
    return $(this).tab('show');
  });

  $("#content .panel").each(function() {
    var i, styles;
    styles = ["panel-primary", "panel-success", "panel-info", "panel-warning", "panel-danger"];
    i = styles[Math.floor(Math.random() * 10 % 5)];
    return $(this).attr("class", "panel " + i);
  });

}).call(this);
