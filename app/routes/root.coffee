loggedIn = true

route = Ember.Route.extend
  renderTemplate: ->
    if loggedIn
      @render('feed', controller: 'feed')
    else
      @render('welcome')

  model: ->
    if loggedIn
      @get('feed')

  setupController: (controller, model) ->
    if loggedIn
      controller = @generateController('feed', model)

    @_super(controller, model)

`export default route;`
