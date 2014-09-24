model = Ember.Object.extend
  since: 0

  fetch: (@store) ->
    @since = Date.now()
    @store.find('event').then @updateFeed
    # Ember.$.ajax(url: '/api/feed', dataType: 'json')
    #        .then (events) => @assignEvents(events)

  updateFeed: ->
    # debugger
  # assignEvents: (events) ->
  #   for e in events
  #     @store.push(e.type, )

  #   @set('events', events)

`export default model;`
