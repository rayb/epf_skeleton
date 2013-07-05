App.FoosRoute = Ember.Route.extend

  model: ->
    App.Foo.find()
