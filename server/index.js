var bodyParser, express, globSync, routes;

express = require('express');

bodyParser = require('body-parser');

globSync = require('glob').sync;

routes = globSync('./routes/*.js', {
  cwd: __dirname
}).map(require);

module.exports = function(emberCLIMiddleware) {
  var app;
  app = express();
  app.use(bodyParser());
  routes.forEach(function(route) {
    return route(app);
  });
  app.use(emberCLIMiddleware);
  return app;
};