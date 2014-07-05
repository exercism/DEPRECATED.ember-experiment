route = Ember.Route.extend
  model: (params, transition) ->
    # Better way to get language?
    trackId = transition.resolvedModels.track.get('id')
    problemId = "#{trackId}/#{params.problem}"
    @store.find('problem', problemId)

`export default route;`
