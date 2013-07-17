App.BarIndexRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"

  renderTemplate: ->
    console.log "about to render bar index"
    @render "foo.index"
    @render "bar.index", into: "foo.index"


