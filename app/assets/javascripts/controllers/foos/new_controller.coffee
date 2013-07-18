App.FoosNewController = Ember.ObjectController.extend
  needs: ['foos']

  save: ->
    controller = this
    @session.flush().then ->
      foo = controller.get('content')
      controller.get('controllers.foos').content.pushObject(foo)
      controller.transitionToRoute "foo", foo

  cancel: ->
    @transitionToRoute "foos"
