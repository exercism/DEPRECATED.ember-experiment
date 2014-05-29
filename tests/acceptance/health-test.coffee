`import startApp from '../helpers/start-app';`

App = null

suite 'Acceptance: Health',
  setup: -> App = startApp()
  teardown: -> Ember.run(App, 'destroy')

test 'the homepage renders', ->
  visit('/')

  andThen ->
    expect(find('#title').text()).to.equal('Exercism')
