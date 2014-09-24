`import Ember from 'ember';`

Router = Ember.Router.extend
  location: ExercismENV.locationType

Router.map ->
  @route 'root', path: '/'

  @route 'explore'
  @resource 'problems', ->
    @resource 'track', path: '/:track_id', ->
      @resource 'problem', path: '/:problem', ->
        @route 'exercises'

  @resource 'exercises', path: '/exercises/:exercise_id', ->
    @resource 'nitpick', path: '/nitpick/:nitpick_id'
    @resource 'iteration', path: '/iteration/:iteration_id'


`export default Router;`
