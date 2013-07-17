App.FooIndexController = Ember.ObjectController.extend
  needs: ['foos']


  # TODO: move this to the bars template
  delete_bar: (bar) ->
    alert 'delete bar'
#    console.log "deleting a record  in foo index: bar:#{bar.get('name')}"
#    foo = @get('content')
#    console.log "foo in delete of bar: #{foo}"
#    transaction = bar.get('transaction')
#    bar.deleteRecord()
#    transaction.commit()
#    @transitionToRoute "foo.index", foo


