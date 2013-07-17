App.BarsNewRoute = Ember.Route.extend
#  needs: ['fooIndex']

  model: ->
    console.log "getting model for bars.new"
    foo = @modelFor('foo')
    @session.merge App.Bar.create(foo: foo)


#  OPTIONAL - EDIT A BAR IN PLACE
#  renderTemplate: ->
#    console.log "about to render bars.new"
#    if controllers.foos.isInPlace
#      @_super()
#    else
#      @render "foo.index", controller: "fooIndex" unless controllers.foos.isInPlace
#      @render "bars.new", into: "foo.index" unless controllers.foos.isInPlace
#    end

#  deactivate: ->
#    model = @currentModel
#    model.get("transaction").rollback()  unless model.get("isSaving")



