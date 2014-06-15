acceptance('Viewing iterations for an exercise')

test 'I navigate to an iteration for an exercise', ->
  visit('/exercises/someones-exercise/1')

  click('a:contains(2)')

  andThen ->
    expect(currentURL()).to.equal('/exercises/someones-exercise/2')
    expect(find('h3').text()).to.equal('Iteration 2')
