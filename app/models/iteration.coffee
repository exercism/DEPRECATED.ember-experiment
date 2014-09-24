model = DS.Model.extend
  exercise: DS.belongsTo('exercise', inverse: 'iterations')
  code: DS.attr('string')

`export default model;`
