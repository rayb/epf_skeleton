App.FoosRoute = Ember.Route.extend

  model: ->
    console.log  'foosroute'
    @session.load('foo', "1")
    # promise = @session.load('foo', "2")
    # console.log promise