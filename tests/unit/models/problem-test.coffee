`import { test, moduleForModel } from 'ember-qunit';`

moduleForModel 'problem', 'Problem Model',
  needs: ['model:exercise']

test 'it has many exercises', ->
  Ember.run =>
    expect(@subject().get('exercises')).to.be.instanceOf(DS.ManyArray)
