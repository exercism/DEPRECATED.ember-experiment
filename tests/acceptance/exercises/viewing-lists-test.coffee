`import startApp from '../../helpers/start-app';`

App = null

suite 'Acceptance: Viewing lists of exercises for a problem',
  setup: -> App = startApp()
  teardown: -> Ember.run(App, 'destroy')

test 'I navigate to exercises for a problem', ->
  visit('/problem/ruby/bob')

  click('a:contains(Exercises)')

  andThen ->
    expect(currentURL()).to.equal('/problem/ruby/bob/exercises')


test 'I view a list of exercises', ->
  visit('/problem/ruby/bob/exercises')

  andThen ->
    expect(find('h2').text()).to.equal('ruby exercises for bob')
