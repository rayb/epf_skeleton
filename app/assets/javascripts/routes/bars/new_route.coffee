App.BarsNewRoute = Ember.Route.extend

  model: ->
    foo = @modelFor('foo')
    childSession = @session.newSession()
    childSession.add(App.Bar.create(foo: foo))




