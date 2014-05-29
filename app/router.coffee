Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route 'explore'
  @resource 'problems', ->
    @route 'language', path: '/:lang'
  @resource 'problem', path: '/problem/:lang/:problem', ->
    @route 'exercises'

  @resource 'exercise', path: '/exercise/:exercise', ->
    @route 'iteration', path: '/:iteration'


`export default Router;`
