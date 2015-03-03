mongoconn = require './mongoconn'

snowSchema = mongoconn.mongoose.Schema {
    name: String,
    passwd: String,
    date: {type: Date, default: Date.now}
}

snowSchema.methods.hello = ()->
    console.log this.first_name+" ".this.last_name+" "+this.date

Snow = mongoconn.mongoose.model 'Snow', snowSchema
module.exports = Snow
