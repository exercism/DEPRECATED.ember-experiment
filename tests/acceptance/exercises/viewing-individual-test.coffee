`import startApp from '../../helpers/start-app';`

App = null

suite 'Acceptance: Viewing individual exercises',
  setup: -> App = startApp()
  teardown: -> Ember.run(App, 'destroy')

test 'I navigate to an exercise and it brings me to the first iteration', ->
  visit('/problem/ruby/bob/exercises')

  click("a:contains(Someone's Exercise)")

  andThen ->
    expect(currentURL()).to.equal('/exercise/someones-exercise/1')


test 'I view an exercise', ->
  visit('/exercise/someones-exercise')

  andThen ->
    expect(find('h1').text()).to.equal("someones-exercise")
