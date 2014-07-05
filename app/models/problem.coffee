model = DS.Model.extend
  exercises: DS.hasMany('exercise', inverse: 'problem')
  track: DS.belongsTo('track', inverse: 'problems')
  track_id: DS.attr('string')
  slug: DS.attr('string')
  files: DS.attr()

`export default model;`
