controller = Ember.Controller.extend
  featuredLangs: ['Ruby', 'JavaScript', 'Elixir', 'Python']

  featured: (->
    featuredLangs = @get('featuredLangs')
    @get('content').filter (lang) ->
      featuredLangs.indexOf(lang.get('language')) >= 0
  ).property('content')

  active: (->
    @get('content').filter (lang) -> lang.get('active')
  ).property('content')

  inactive: (->
    @get('content').filter (lang) -> !lang.get('active')
  ).property('content')

`export default controller;`
