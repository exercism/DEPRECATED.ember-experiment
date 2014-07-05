route = Ember.Route.extend
  model: -> @store.find('track')

`export default route;`
