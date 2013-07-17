App.FooIndexController = Ember.ObjectController.extend
  needs: ['foos']

  deleteBar: (bar) ->
    name = bar.get('name')
    if window.confirm("Are you sure you want to delete foo: #{name}?")
      @session.deleteModel bar
      @session.flush()
      @transitionToRoute "foo.index"