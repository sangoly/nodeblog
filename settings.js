(function() {
  var app;

  app = 'nodeblog';

  module.exports = {
    APP: app,
    mongo: {
      address: "localhost",
      port: 27017,
      db: app
    }
  };

}).call(this);
