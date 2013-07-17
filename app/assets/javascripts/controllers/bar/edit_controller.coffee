App.BarEditController = Ember.ObjectController.extend

  save: ->
    model = @get('model')
#    sent_at = new Date($("#datepicker").val())
#    model.set('sent_at', sent_at)
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


