route = Ember.Route.extend
  afterModel: (model) ->
    @transitionTo('iteration', model.get('iterations.content')[0])

`export default route;`
