Router = Ember.Router.extend
  location: ExercismENV.locationType

Router.map ->
  @route 'welcome', path: '/'

  @route 'explore'
  @resource 'problems', ->
    @resource 'language', path: '/:lang', ->
      @resource 'problem', path: '/:problem', ->
        @route 'exercises'

  @resource 'exercises', path: '/exercises/:exercise', ->
    @route 'iteration', path: '/:iteration'


`export default Router;`
