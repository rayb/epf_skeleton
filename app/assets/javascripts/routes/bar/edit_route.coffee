App.BarEditRoute = Ember.Route.extend

  model: ->
    @modelFor "bar"
    # THIS IS A HACK TO GET THE FOO ON THE BAR WHICH WE SHOULD JUST HAVE
#    foo = @modelFor "foo"
#    bar = @modelFor "bar"
#    bar.set('foo', foo)
#    bar

#  renderTemplate: ->
#    console.log "about to render bars.edit"
#    @render "foo.index"
#    @render "bar.edit", into: "foo.index"
    
#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")
