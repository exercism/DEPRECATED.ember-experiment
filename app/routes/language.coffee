`import ajax from 'ic-ajax'`

route = Ember.Route.extend
  model: (params) ->
    ajax('http://localhost:9292/tracks').then (response) ->
      lang = response.tracks.findBy('slug', params.lang)
      problems = lang.problems.map (problem) ->
        {
          id: problem
          name: problem.toUpperCase()
          slug: problem
        }

      $({}).extend lang, {problems: problems, language: params.lang}

`export default route;`
