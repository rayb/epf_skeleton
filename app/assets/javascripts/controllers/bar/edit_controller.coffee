App.BarEditController = Ember.ObjectController.extend

  save: ->
    model = @get('model')
    bar_date = new Date($("#datepicker").val())
    model.set('bar_date', bar_date)
    @session.flush()
    # CAN WE USE THE CALLBACK METHOD
    @transitionToRoute "bar.index",  model

  cancel: ->
    @transitionToRoute "foo.index"

#  IS THIS A BETTER WAY TO GO ??
#  transitionAfterSave: ( ->
#    console.log 'bar new transitionAfterSave'
##    @transitionToRoute "foo", @get("content")  if @get("content.id")
#    @target.transitionTo "foo.index"
#  ).observes("model.id")
#


