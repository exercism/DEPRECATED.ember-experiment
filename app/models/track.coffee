model = DS.Model.extend
  problems: DS.attr()
  language: DS.attr('string')
  slug: DS.attr('string')
  active: DS.attr('boolean')

`export default model;`
