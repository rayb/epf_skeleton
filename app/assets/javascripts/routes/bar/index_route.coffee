App.BarIndexRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"

  renderTemplate: ->
    @render "foo.index"
    @render "bar.index", into: "foo.index"


