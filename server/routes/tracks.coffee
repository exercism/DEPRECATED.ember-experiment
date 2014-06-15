request = require('request')

module.exports = (app) ->
  app.get /^\/x-api(\/.*)$/, (req, res) ->
    request "http://x.exercism.io/#{req.params[0]}", (error, response, body) ->
      res.send(body)
