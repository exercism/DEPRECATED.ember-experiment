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

  @resource 'exercises', path: '/exercises/:exercise', ->
    @route 'iteration', path: '/:iteration'


`export default Router;`
