model = DS.Model.extend
  type: DS.attr('string')
  timestamp: DS.attr('number')

  # TODO: refactor into a polymorphic association
  nitpick: DS.belongsTo('nitpick')
  reply: DS.belongsTo('reply')

  isNitpick: (-> @get('type') == 'nitpick').property('type')
  isReply: (-> @get('type') == 'reply').property('type')


`export default model;`
