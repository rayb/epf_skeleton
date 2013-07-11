App.FooEditController = Ember.ObjectController.extend

  init: ->
#    alert 'foo edit init'
    @childSession = @session.newSession()
#    console.log "foo controller edit init"

  adoptFoo: (foo) ->
    @childSession = @session.newSession() unless @childSession

#    alert 'adopting foo'
#    alert foo
    @childSession.add(foo)
#    @realFoo = foo

  save: ->
#    alert @get('content').id
    console.log "saving edited foo"
    model = @get('model')
#    foo_date = new Date($("#datepicker").val())
#    model.set('foo_date', foo_date)
#    model.get('transaction').commit()
    @childSession.flush()
    @stopEditing()
    @transitionToRoute "foo.index", @get('model')

  cancel: ->
#    alert 'we are in foo edit controller cancel'
    @stopEditing()
    @transitionToRoute "foos"

  stopEditing: ->
    if @childSession
      @childSession = null
#      alert 'we are in stop editing'
#      alert @realFoo.get('name')
      #@session.refresh(@realFoo)
#      shadow = @session.getShadow(@realFoo)  if @realFoo
#      alert shadow.get('name')  if @realFoo
  #    @set('content', shadow)
  #    @realFoo = null
  #   WHAT TO DO HERE TO RESET THINGS


#  THIS ONE IS CALLED WHEN THE ID COMES THROUGH
#  transition_after_save: ( ->
#    alert @get('id')
#  ).observes("content.id")



#  addBaz: (baz) ->
#    console.log "adding a baz to foobaz for foo"
#    foobaz = undefined
#    foobaz = @get("foobazs").createRecord(baz: baz)
#    baz.get("foobazs").pushObject foobaz
#    @get('model').get('transaction').commit()
#
#  removeBaz: (baz) ->
#    foobaz = undefined
#    foobaz = @get("foobazs").find((foobaz) ->
#      true if foobaz.get("baz") is this
#    , baz)
#    @get("foobaz").removeObject foobaz
#    baz.get("foobaz").removeObject foobaz
#    foobaz.deleteRecord()
#    App.store.commit()

