initializer =
  name: 'feed'
  initialize: (container, application) ->
    feed = container.lookup('model:feed')

    application.deferReadiness()
    feed.fetch().then ->
      application.advanceReadiness()

    container.register('globals:feed', feed, instantiate: false)
    application.inject('route', 'feed', 'globals:feed')

`export default initializer;`