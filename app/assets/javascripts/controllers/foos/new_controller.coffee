App.FoosNewController = Ember.ObjectController.extend()

#  save: ->
##    WHY DOENS'T SAVE WORK HERE
#    console.log "saving new foo"
#    alert 'why arent we getting this'
#    @session.flush()
##    @get('model').get('transaction').commit()

  # COULD YOU ALSO CALL didCreate
#  transition_after_save: ( ->
#    console.log 'transitionAfterSave'
#    @transitionToRoute "foo", @get("content")  if @get("content.id")
#  ).observes("content.id")

  cancel: ->
    @transitionToRoute "foos"

#  addBaz: (baz) ->
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

