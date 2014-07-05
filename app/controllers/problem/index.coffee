controller = Ember.Controller.extend
  files: (->
    filesArray = []

    for key, value of @get('content.files')
      filesArray.push
        name: key
        body: value

    filesArray
  ).property('content.files')

`export default controller;`
