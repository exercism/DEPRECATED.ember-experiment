`import resolver from './helpers/resolver';`
`import { setResolver } from 'ember-qunit';`
`import acceptance from './helpers/acceptance';`

window.acceptance = acceptance

setResolver(resolver)

document.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>')

Ember.Test.adapter = Ember.Test.MochaAdapter.create()
$(document).ready ->
  window.expect = chai.expect

  mocha.checkLeaks()
  mocha.globals [
    'visit'
    'click'
    'keyEvent'
    'fillIn'
    'find'
    'findWithAssert'
    'wait'
    'andThen'
    'triggerEvent'
    'LiveReload'
    'currentRouteName'
    'currentPath'
    'currentURL'
    '__PROMISE_INSTRUMENTATION__'
  ]

  mocha.run()

window.exFixtures = {}
window.exFixtures.tracks = """
{
  "tracks": [
    {
      "active": true,
      "id": "coffeescript",
      "language": "CoffeeScript",
      "problems": [
        "bob",
        "word-count"
      ],
      "slug": "coffeescript"
    }
  ]
}
"""

window.exFixtures.track = """
{
  "track": {
    "active": true,
    "id": "coffeescript",
    "language": "CoffeeScript",
    "problems": [
      "coffeescript/bob",
      "coffeescript/word-count"
    ],
    "slug": "coffeescript"
  },
  "problems": [
    {
      "id": "coffeescript/bob",
      "track_id": "coffeescript",
      "slug": "bob",
      "files": {
        "README.md": "Bob is a lackadaisical teenager."
      },
      "fresh": true
    },
    {
      "id": "coffeescript/word-count",
      "track_id": "coffeescript",
      "slug": "word-count",
      "files": {
        "README.md": "Write a program that given a phrase"
      },
      "fresh": true
    }
  ]
}
"""

server = sinon.fakeServer.create()
server.autoRespond = true
# server.autoRespondAfter = 100
header = { "Content-Type": "application/json" }

server.respondWith("GET", "/x-api/tracks", [ 200, header, window.exFixtures.tracks ])
server.respondWith("GET", "/x-api/tracks/coffeescript", [ 200, header, window.exFixtures.track ])