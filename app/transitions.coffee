transitions = ->
  @transition(
    @fromRoute('feed'),
    @toRoute('nitpick'),
    @use('feed'),
    @reverse('toRight')
  )

`export default transitions;`