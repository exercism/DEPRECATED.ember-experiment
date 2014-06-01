`import startApp from '../helpers/start-app';`

App = null

suite 'Acceptance: Guests visiting the homepage',
  setup: -> App = startApp()
  teardown: -> Ember.run(App, 'destroy')

test 'they are greeted', ->
  visit('/')

  andThen ->
    expect(find('h1').text()).to.equal('Welcome')
