route = Ember.Route.extend
  beforeModel: ->
    @transitionTo('exercises.iteration', '1')

`export default route;`
