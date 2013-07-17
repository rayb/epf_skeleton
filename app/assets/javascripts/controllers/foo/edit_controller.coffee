App.FooEditController = Ember.ObjectController.extend

  save: ->
    @get('model.session').flush()
    @transitionToRoute "foo.index", @get('model')

  cancel: ->
    @transitionToRoute "foos"