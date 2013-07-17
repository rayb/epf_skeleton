App.BarEditRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"

  setupController: (controller, model) ->
    childSession = @session.newSession()
    childModel = childSession.add(model)
    controller.set('model', childModel)

