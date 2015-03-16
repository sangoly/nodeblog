mongoconn = require './mongoconn'

categoerySchema = mongoconn.mongoose.Schema {
    name: String,
    id: Int
}

categoerySchema.methods.hello = ()->
    console.log this.first_name+" ".this.last_name+" "+this.date

Snow = mongoconn.mongoose.model 'categoeries', categoerySchema
module.exports = Snow
