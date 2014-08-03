var request;

request = require('request');

module.exports = function(app) {
  return app.get(/^\/x-api(\/.*)$/, function(req, res) {
    return request("http://x.exercism.io/" + req.params[0], function(error, response, body) {
      return res.send(body);
    });
  });
};