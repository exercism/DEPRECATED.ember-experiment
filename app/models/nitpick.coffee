model = DS.Model.extend
  track: DS.belongsTo('track')
  problem: DS.belongsTo('problem')
  exercise: DS.belongsTo('exercise')
  message: DS.attr('string')
  lines: DS.attr('raw')
  user: DS.belongsTo('user')

`export default model;`
