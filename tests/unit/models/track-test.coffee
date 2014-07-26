`import { test, moduleForModel } from 'ember-qunit';`

moduleForModel 'track', 'Track Model',
  needs: ['model:problem']

test 'it has many problems', ->
  Ember.run =>
    expect(@subject().get('problems')).to.be.instanceOf(DS.ManyArray)
