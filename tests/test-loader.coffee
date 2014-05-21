# globals requirejs,require

# TODO: load based on params
Ember.keys(requirejs.entries).forEach (entry) ->
  if (/\-test/).test(entry)
    require(entry, null, null, true)
