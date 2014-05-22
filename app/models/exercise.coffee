ExerciseModel = DS.Model.extend
  problem: DS.belongsTo('problem', inverse: 'exercises')
  iterations: DS.hasMany('iteration', inverse: 'exercise')

`export default ExerciseModel;`
