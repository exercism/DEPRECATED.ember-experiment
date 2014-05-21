`import startApp from '../helpers/start-app';`

App = null
module 'Integration: Health',
  setup: -> App = startApp()
  teardown: -> App.reset()

test 'the homepage renders', ->
  visit('/')

  andThen ->
    equal(find('#title').text(), 'Welcome to Exercism')
