express = require 'express'
router = express.Router()

## Get home page
router.get '/', (req, res, next)->
    kinds = [["head", 1, "head1"],
             ["head", 2, "head2"],
             ["head", 3, "head3"],
             ["head", 4, "head4"],
             ["head", 5, "head5"],
             ["head", 6, "head6"],
             ["head", 7, "head7"],
             ["head", 8, "head8"],
             ["head", 9, "head9"],
             ["head", 10, "head10"],
             ["head", 11, "head11"]]
    res.render 'index', {title: '面试小伙伴', categoeries: kinds}

module.exports = router
