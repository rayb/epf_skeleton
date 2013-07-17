App.BarEditRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"

  setupController: (controller, model) ->
    childSession = @session.newSession()
    childModel = childSession.add(model)
    controller.set('model', childModel)

# option for editing in an adjacent outlet (instead of the same one)
#  renderTemplate: ->
#    console.log "about to render bars.edit"
#    @render "foo.index"
#    @render "bar.edit", into: "foo.index"
