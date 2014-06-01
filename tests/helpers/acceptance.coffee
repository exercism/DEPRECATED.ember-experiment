`import startApp from './start-app';`

acceptance = (suiteName) ->
  App = null

  suite "Acceptance: #{suiteName}",
    setup: -> App = startApp()
    teardown: -> Ember.run(App, 'destroy')

`export default acceptance;`
