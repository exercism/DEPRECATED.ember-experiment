var bodyParser = require('body-parser');
var globSync   = require('glob').sync;
var routes     = globSync('./routes/**/*.js', { cwd: __dirname }).map(require);

module.exports = function(app) {
  app.use(bodyParser.json());
  app.use(bodyParser.urlencoded({
    extended: true
  }));

  routes.forEach(function(route) { route(app); });
};