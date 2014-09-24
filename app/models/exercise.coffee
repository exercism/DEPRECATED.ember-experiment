model = DS.Model.extend
  problem: DS.belongsTo('problem', inverse: 'exercises')
  iterations: DS.hasMany('iteration', inverse: 'exercise')
  user: DS.belongsTo('user', inverse: 'exercises')

`export default model;`
