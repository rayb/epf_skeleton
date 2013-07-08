App.FoosRoute = Ember.Route.extend

  model: ->
    console.log  'foosroute'
    @session.query App.Foo
    # promise = @session.load('foo', "2")
    # console.log promise

