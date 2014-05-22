`import { test, moduleForModel } from 'ember-qunit';`

moduleForModel 'iteration', 'Iteration Model',
  needs: ['model:exercise']

test 'it exists', ->
  expect(@subject()).to.be.instanceOf(DS.Model)
