express = require 'express'
router = express.Router()
Snow = require '../models/snow'

## login handler. 
router.get '/login', (req, res, next)->
    res.render 'users/login', {title: "登录"}

router.post '/login', (req, res, next)->
    if not req.body.name
        err = "用户名不能为空"
    else if not req.body.name
        err = "密码不能为空"
    unless err
        snow = new Snow {name: req.body.name, passwd: req.body.passwd}
        snow.save (err)->
            if err
                console.log err
        res.redirect '/users/login'
    res.render 'users/login', {err: err}

## register handler
router.get '/register', (req, res, next)->
    res.render 'users/register', {title: "注册"}
    
router.post '/register', (req, res, next)->
    res.respone 'texttext'

module.exports = router