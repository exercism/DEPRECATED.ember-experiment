acceptance('Viewing individual exercises')

test 'I navigate to an exercise and it brings me to the first iteration', ->
  visit('/problems/ruby/bob/exercises')

  click("a:contains(Someone's Exercise)")

  andThen ->
    expect(currentURL()).to.equal('/exercises/someones-exercise/1')
    expect(find('h1').text()).to.equal("someones-exercise")
