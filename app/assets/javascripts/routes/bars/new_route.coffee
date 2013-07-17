App.BarsNewRoute = Ember.Route.extend

  model: ->
    console.log "getting model for bars.new"
    foo = @modelFor('foo')
    childSession = @session.newSession()
    childSession.add(App.Bar.create(foo: foo))




