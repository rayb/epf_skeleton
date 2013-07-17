App.FooEditRoute = Ember.Route.extend

  model: ->
    @modelFor "foo"

  setupController: (controller, model) ->
    childSession = @session.newSession()
    childModel = childSession.add(model)
    controller.set('model', childModel)

