App.BarIndexRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"

  renderTemplate: ->
    console.log "about to render bar index"
    @render "foo.index"
    @render "bar.index", into: "foo.index"

# OPTIONAL FOR MORE INTERACTIVE EDITING
#    @render "foo.edit", controller: "fooEdit"
#    @render "bar.edit",into: "foo.edit"

