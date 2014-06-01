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
