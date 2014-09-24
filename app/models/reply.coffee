model = DS.Model.extend
  problem: DS.belongsTo('problem')
  nitpick: DS.belongsTo('nitpick')
  message: DS.attr('string')
  user: DS.belongsTo('user')

`export default model;`
