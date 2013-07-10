App.FoosController = Ember.ArrayController.extend

  sortProperties: ['name']
  active_foo_id: null

  is_editing: false

#  init: ->
#    console.log "foos controller init"

  delete_foo: (foo) ->
    name = foo.get('name')
    if window.confirm("Are you sure you want to delete foo: #{name}?")
      @session.deleteModel foo
      @session.flush()
      @transitionToRoute "foo.index"

