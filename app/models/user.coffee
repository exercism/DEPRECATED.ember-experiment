model = DS.Model.extend
  exercises: DS.hasMany('exercise', inverse: 'user')

`export default model;`
