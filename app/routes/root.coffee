loggedIn = true

route = Ember.Route.extend
  renderTemplate: ->
    if loggedIn
      @render('feed', controller: 'feed')
    else
      @render('welcome')

  beforeModel: ->
    @get('feed').fetch(@store)

  model: ->
    @store.find('event') if loggedIn

  setupController: (controller, model) ->
    if loggedIn
      controller = @generateController('feed', model)

    @_super(controller, model)

`export default route;`
