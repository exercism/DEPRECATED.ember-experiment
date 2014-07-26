acceptance('Smoke test')

test 'I run through the app', ->
  visit('/')

  click('a:contains(Explore)')

  andThen testExplore


testExplore = ->
  expect(currentURL()).to.equal('/explore')
  expect(find('h1').text()).to.equal('Explore')

  click('a:contains(CoffeeScript)')

  andThen testTrack
    
testTrack = ->
  expect(currentURL()).to.equal('/problems/coffeescript')

  click('a:contains(bob)')

  andThen testProblem

testProblem = ->
  expect(currentURL()).to.equal('/problems/coffeescript/bob')
  expect(find('h1').text()).to.equal('bob in coffeescript')

  expect(find('.ember-view').text()).to.match(/README.md/)
  expect(find('.ember-view').text()).to.match(/Bob is a lackadaisical teenager./)

  click('a:contains(Exercises)')

  andThen testExercises

testExercises = ->
  expect(currentURL()).to.equal('/problems/coffeescript/bob/exercises')
  expect(find('h2').text()).to.equal('coffeescript exercises for bob')

  click("a:contains(Someone's Exercise)")

  andThen testExercise
  
testExercise = ->
  expect(currentURL()).to.equal('/exercises/someones-exercise/1')
  expect(find('h1').text()).to.equal("someones-exercise")

  click('a:contains(2)')

  andThen testIteration

testIteration = ->
  expect(currentURL()).to.equal('/exercises/someones-exercise/2')
  expect(find('h3').text()).to.equal('Iteration 2')