ExerciseIndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('exercise.iteration', '1')


`export default ExerciseIndexRoute;`
