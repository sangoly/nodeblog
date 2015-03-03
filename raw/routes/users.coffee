express = require 'express'
router = express.Router()
Snow = require '../models/snow'

## GET users listing. 
router.get '/register', (req, res, next)->
    res.render 'register'

router.post '/register', (req, res, next)->
    snow = new Snow {name: req.body.name, passwd: req.body.passwd}
    snow.save (err)->
        if err
            console.log err
    res.redirect '/users/register'

module.exports = router
