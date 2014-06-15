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
window.exFixtures.tracks = JSON.parse """
{
  "tracks": [
    {
      "active": true,
      "id": "elixir",
      "language": "Elixir",
      "problems": [
        "bob"
      ],
      "slug": "elixir"
    },
    {
      "active": true,
      "id": "go",
      "language": "Go",
      "problems": [
        "bob"
      ],
      "slug": "go"
    },
    {
      "active": true,
      "id": "javascript",
      "language": "JavaScript",
      "problems": [
        "bob"
      ],
      "slug": "javascript"
    },
    {
      "active": true,
      "id": "python",
      "language": "Python",
      "problems": [
        "bob"
      ],
      "slug": "python"
    },
    {
      "active": true,
      "id": "ruby",
      "language": "Ruby",
      "problems": [
        "bob"
      ],
      "slug": "ruby"
    },
    {
      "active": false,
      "id": "rust",
      "language": "Rust",
      "problems": [],
      "slug": "rust"
    }
  ]
}
"""