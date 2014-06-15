`import ajax from 'ic-ajax'`

route = Ember.Route.extend
  model: (params, transition) ->
    # Better way to get language?
    lang = transition.resolvedModels.language.slug
    fullSlug = "#{lang}/#{params.problem}"
    ajax("http://localhost:9292/problems/#{fullSlug}").then (response) ->
      problem = response.assignments[0]
      $({}).extend(problem, fullSlug: fullSlug)

`export default route;`
