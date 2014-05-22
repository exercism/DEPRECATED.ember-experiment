`import { test, moduleForModel } from 'ember-qunit';`

moduleForModel 'exercise', 'Exercise Model',
  needs: ['model:problem', 'model:iteration']

test 'it has many iterations', ->
  Ember.run =>
    expect(@subject().get('iterations')).to.be.instanceOf(DS.ManyArray)
