model = DS.Model.extend
  problems: DS.hasMany('problem', inverse: 'track')
  language: DS.attr('string')
  slug: DS.attr('string')
  active: DS.attr('boolean')

`export default model;`
