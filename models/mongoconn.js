(function() {
  var addr, mongoose, settings;

  mongoose = require('mongoose');

  settings = require('../settings');

  addr = 'mongodb://' + settings.mongo.address + "/" + settings.mongo.db;

  mongoose.connect(addr);

  exports.mongoose = mongoose;

}).call(this);
