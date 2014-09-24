initializer =
  name: 'feed'
  after: 'store'
  initialize: (container, application) ->
    feed = container.lookup('model:feed')
    store = container.lookup('store:main')

    application.deferReadiness()
    feed.fetch(store).then ->
      application.advanceReadiness()

    container.register('globals:feed', feed, instantiate: false)
    application.inject('route', 'feed', 'globals:feed')

`export default initializer;`