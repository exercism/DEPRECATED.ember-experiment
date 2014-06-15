acceptance('Visiting /problems')

test 'It redirects to /explore', ->
  visit('/problems')

  andThen ->
    expect(currentURL()).to.equal('/explore')
