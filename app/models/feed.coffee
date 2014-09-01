model = Ember.Object.extend
  fetch: ->
    Ember.$.ajax
      url: '/api/feed'
      dataType: 'json'
      success: (events) =>
        @set('events', events)

`export default model;`
