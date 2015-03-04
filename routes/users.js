(function() {
  var Snow, express, router;

  express = require('express');

  router = express.Router();

  Snow = require('../models/snow');

  router.get('/login', function(req, res, next) {
    return res.render('users/login', {
      title: "登录"
    });
  });

  router.post('/login', function(req, res, next) {
    var err, snow;
    if (!req.body.name) {
      err = "用户名不能为空";
    } else if (!req.body.name) {
      err = "密码不能为空";
    }
    if (!err) {
      snow = new Snow({
        name: req.body.name,
        passwd: req.body.passwd
      });
      snow.save(function(err) {
        if (err) {
          return console.log(err);
        }
      });
      res.redirect('/users/login');
    }
    return res.render('users/login', {
      err: err
    });
  });

  module.exports = router;

}).call(this);
