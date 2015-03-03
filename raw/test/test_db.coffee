Snow = require '../models/snow'

snow = new Snow {first_name: 'wu', last_name: 'lixue'}
snow.save (err, snow) ->
    if err
        console.log 'error occured'
    else
        snow.hello
