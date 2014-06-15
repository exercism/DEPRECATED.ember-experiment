# To use it create some files under `routes/`
# e.g. `server/routes/ember-hamsters.js`
#
# module.exports = (app) ->
#   app.get '/ember-hamsters', (req, res) ->
#     res.send('hello')
#

express    = require('express')
bodyParser = require('body-parser')
globSync   = require('glob').sync
routes     = globSync('./routes/*.coffee', { cwd: __dirname }).map(require)

module.exports = (emberCLIMiddleware) ->
  app = express()
  app.use(bodyParser())

  routes.forEach (route) -> route(app)
  app.use(emberCLIMiddleware)

  app
