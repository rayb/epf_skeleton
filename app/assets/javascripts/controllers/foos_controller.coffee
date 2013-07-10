App.FoosController = Ember.ArrayController.extend

  sortProperties: ['name']
  active_foo_id: null

  is_editing: false

#  init: ->
#    console.log "foos controller init"

#  delete_foo: (foo) ->
#    name = foo.get('name')
#    if window.confirm("Are you sure you want to delete foo: #{name}?")
#      transaction = foo.get('transaction')
#      foo.deleteRecord()
#      transaction.commit()
#      @transitionToRoute "foo.index"

