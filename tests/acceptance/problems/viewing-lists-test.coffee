`import startApp from '../../helpers/start-app';`

App = null

suite 'Acceptance: Viewing lists of problems',
  setup: -> App = startApp()
  teardown: -> Ember.run(App, 'destroy')

test 'I view a list of problems', ->
  visit('/problems')

  andThen ->
    expect(find('h1').text()).to.equal('Problems in All Languages')


test 'I navigate to problems in a specific language', ->
  visit('/problems')

  click('a:contains(Ruby)')

  andThen ->
    expect(currentURL()).to.equal('/problems/ruby')


test 'I view a list of problems in a specific language', ->
  visit('/problems/ruby')

  andThen ->
    expect(find('h1').text()).to.equal('problems in ruby')