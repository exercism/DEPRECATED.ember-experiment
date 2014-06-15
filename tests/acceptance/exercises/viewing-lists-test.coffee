acceptance('Viewing lists of exercises for a problem')

test 'I navigate to exercises for a problem', ->
  visit('/problems/ruby/bob')

  click('a:contains(Exercises)')

  andThen ->
    expect(currentURL()).to.equal('/problems/ruby/bob/exercises')
    expect(find('h2').text()).to.equal('ruby exercises for bob')
