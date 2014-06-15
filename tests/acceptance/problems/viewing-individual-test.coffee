acceptance('Viewing individual problems')

test 'I navigate to a problem', ->
  visit('/problems/ruby')

  click('a:contains(BOB)')

  andThen ->
    expect(currentURL()).to.equal('/problems/ruby/bob')
    expect(find('h1').text()).to.equal('bob in ruby')
