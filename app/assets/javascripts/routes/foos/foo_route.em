App.FooRoute = Ember.Route.extend

  model: ->
    console.log  'fooroute'
    @session.find App.Foo, 1
    # promise = @session.load('foo', "2")
    # console.log promise


