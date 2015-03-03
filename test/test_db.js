(function() {
  var Snow, snow;

  Snow = require('../models/snow');

  snow = new Snow({
    first_name: 'wu',
    last_name: 'lixue'
  });

  snow.save(function(err, snow) {
    if (err) {
      return console.log('error occured');
    } else {
      return snow.hello;
    }
  });

}).call(this);
