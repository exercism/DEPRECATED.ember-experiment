`import ajax from 'ic-ajax'`

test 'I navigate to explore problems', ->
  visit('/')

  click('a:contains(Explore)')

  andThen ->
    expect(currentURL()).to.equal('/explore')
    expect(find('h1').text()).to.equal('Explore')

    expect(find('.ember-view').text()).to.match(/Ruby/)
    expect(find('.ember-view').text()).to.match(/JavaScript/)
    expect(find('.ember-view').text()).to.match(/Elixir/)
    expect(find('.ember-view').text()).to.match(/Python/)

    expect(find('.ember-view').text()).to.match(/Active Languages/)
    expect(find('.ember-view').text()).to.match(/Go/)

    expect(find('.ember-view').text()).to.match(/Coming Soon/)
    expect(find('.ember-view').text()).to.match(/Rust/)


test 'I explore a language', ->
  visit('/explore')

  click('a:contains(Ruby)')

  andThen ->
    expect(currentURL()).to.equal('/problems/ruby')
    