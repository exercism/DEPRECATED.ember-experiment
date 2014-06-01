acceptance('Viewing individual problems')

test 'I navigate to a problem', ->
  visit('/problems/ruby')

  click('a:contains(Bob)')

  andThen ->
    expect(currentURL()).to.equal('/problem/ruby/bob')


test 'I view a problem', ->
  visit('/problem/ruby/bob')

  andThen ->
    expect(find('h1').text()).to.equal('bob in ruby')
