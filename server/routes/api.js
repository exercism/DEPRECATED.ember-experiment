var request;

request = require('request');

module.exports = function(app) {
  return app.get(/^\/api\/feed$/, function(req, res) {
    var activity = [
      {
        type: 'nitpick',
        timestamp: 1409605156688,
        nitpick: {
          id: 'abc123',
          problem_id: 'ruby/bob',
          message: 'Sweet codes.',
          lines: [11],
          user_id: 22
        }
      },
      {
        type: 'reply',
        timestamp: 1409605156687,
        reply: {
          id: 'reply123',
          problem_id: 'ruby/bob',
          nitpick_id: 'abc123',
          message: 'Good point.',
          user_id: 22
        }
      }
    ]
    return res.send(JSON.stringify(activity));
  });
};