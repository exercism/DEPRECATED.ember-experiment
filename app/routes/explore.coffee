`import ajax from 'ic-ajax'`

route = Ember.Route.extend
  model: ->
    ajax('http://localhost:9292/tracks').then (response) ->
      featured = response.tracks.filter (item) ->
        ['Ruby', 'JavaScript', 'Elixir', 'Python'].indexOf(item.language) >= 0

      active = response.tracks.filter (item) -> item.active
      inactive = response.tracks.filter (item) -> !item.active

      {featured: featured, active: active, inactive: inactive, all: response.tracks}

`export default route;`
