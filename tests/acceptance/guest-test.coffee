acceptance('Guests visiting the homepage')

test 'they are greeted', ->
  visit('/')

  andThen ->
    expect(find('h1').text()).to.equal('Welcome')
