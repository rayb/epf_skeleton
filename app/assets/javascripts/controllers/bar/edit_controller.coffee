App.BarEditController = Ember.ObjectController.extend

  save: ->
    model = @get('model')
    bar_date = new Date($("#datepicker").val())
    model.set('bar_date', bar_date)
    @get('model.session').flush()
    @transitionToRoute "bar.index",  model

  cancel: ->
    @transitionToRoute "foo.index"
