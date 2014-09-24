var request;

request = require('request');

module.exports = function(app) {
  return app.get(/^\/api\/exercises\/[^\/]*$/, function(req, res) {
    var exercise = {
      exercise: {
        id: 'ex111',
        iterations: ['it111', 'it222'],
        user: 22
      },

      iterations: [
        {
          id: 'it111',
          exercise: 'ex111',
          code: 'def first_try\n# got code\nend'
        },
        {
          id: 'it222',
          exercise: 'ex111',
          code: 'def second_try\n# more code\nend'
        }
      ]
    }

    return res.send(JSON.stringify(exercise));
  });
};
