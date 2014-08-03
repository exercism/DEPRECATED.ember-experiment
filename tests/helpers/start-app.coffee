# global require

Application = require('exercism/app')['default']
Router = require('exercism/router')['default']
`import Ember from 'ember';`

startApp = (attrs) ->
  App = null

  attributes = Ember.merge
    # useful Test defaults
    rootElement: '#ember-testing'
    LOG_ACTIVE_GENERATION:false
    LOG_VIEW_LOOKUPS: false
  , attrs # but you can override

  Router.reopen
    location: 'none'

  Ember.run ->
    App = Application.create(attributes)
    App.setupForTesting()
    App.injectTestHelpers()

  App.reset() # this shouldn't be needed, i want to be able to "start an app at a specific URL"

  return App

`export default startApp;`
