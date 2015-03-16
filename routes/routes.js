(function() {
  var express, router;

  express = require('express');

  router = express.Router();

  router.get('/', function(req, res, next) {
    return res.render('index', {
      title: '面试小伙伴'
    });
  });

  module.exports = router;

}).call(this);
