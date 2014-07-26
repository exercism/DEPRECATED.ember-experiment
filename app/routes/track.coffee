route = Ember.Route.extend
  model: (params) ->
    @store.find('track', params.track_id).then (model) ->
      # Reload the model so that the store makes another
      # request for the track, containing the sideloaded
      # problems.
      model.reload()

`export default route;`
