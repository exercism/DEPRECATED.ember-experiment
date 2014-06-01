acceptance('Exploring problems in languages')

test 'I navigate to explore problems', ->
  visit('/')

  click('a:contains(Explore)')

  andThen ->
    expect(currentURL()).to.equal('/explore')


test 'I explore problems', ->
  visit('/explore')

  andThen ->
    expect(find('h1').text()).to.equal('Explore')
