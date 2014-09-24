var request;

request = require('request');

module.exports = function(app) {
  return app.get(/^\/api\/events$/, function(req, res) {
    // {
    //   id: 'needs-this-2',
    //   type: 'reply',
    //   timestamp: 1409605156688,
    //   reply: 'reply123'
    // },
    // replies: [
    //   {
    //     id: 'reply123',
    //     track: 'ruby',
    //     problem: 'bob',
    //     nitpick: 'abc123',
    //     message: 'Good point.',
    //     user: 23
    //   }
    // ]
    var events = {
      events: [
        {
          id: 'needs-this-1',
          type: 'nitpick',
          timestamp: 1409605156687,
          nitpick: 'abc123'
        }
      ],

      nitpicks: [
        {
          id: 'abc123',
          track: 'ruby',
          problem: 'bob',
          exercise: 'ex111',
          message: 'Sweet codes.',
          lines: [11],
          user: 22
        }
      ]
    }

    return res.send(JSON.stringify(events));
  });

};