App.FooEditController = Ember.ObjectController.extend

  init: ->
    console.log "foo controller edit init"

  save: ->
    console.log "saving edited foo"
    model = @get('model')
#    foo_date = new Date($("#datepicker").val())
#    model.set('foo_date', foo_date)
#    model.get('transaction').commit()
    @session.flush()
    @transitionToRoute "foo.index", @get('model')

  cancel: ->
    @transitionToRoute "foos"

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

