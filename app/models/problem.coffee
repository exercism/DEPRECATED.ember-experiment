model = DS.Model.extend
  track: DS.belongsTo('track', inverse: 'problems')
  exercises: DS.hasMany('exercise', inverse: 'problem')
  track_id: DS.attr('string')
  slug: DS.attr('string')
  files: DS.attr()

`export default model;`
