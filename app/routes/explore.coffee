`import ajax from 'ic-ajax'`

route = Ember.Route.extend
  model: -> @store.find('track')

`export default route;`
