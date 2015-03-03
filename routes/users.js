(function() {
  var Snow, express, router;

  express = require('express');

  router = express.Router();

  Snow = require('../models/snow');

  router.get('/register', function(req, res, next) {
    return res.render('register');
  });

  router.post('/register', function(req, res, next) {
    var snow;
    snow = new Snow({
      name: req.body.name,
      passwd: req.body.passwd
    });
    snow.save(function(err) {
      if (err) {
        return console.log(err);
      }
    });
    return res.redirect('/users/register');
  });

  module.exports = router;

}).call(this);
