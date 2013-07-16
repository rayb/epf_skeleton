App.FooEditController = Ember.ObjectController.extend

  save: ->
    @get('model.session').flush()
    @transitionToRoute "foo.index", @get('model')
#   FUTURE DATE HANDLING ???
#    model = @get('model')
#    foo_date = new Date($("#datepicker").val())
#    model.set('foo_date', foo_date)

  cancel: ->
    @transitionToRoute "foos"