ProblemModel = DS.Model.extend
  exercises: DS.hasMany('exercise', inverse: 'problem')

`export default ProblemModel;`
