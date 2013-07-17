App.BarsNewController = Ember.ObjectController.extend
  needs: ['fooIndex']

#  save: ->
#    console.log "saving  a new bar with date: #{$("#datepicker").attr('value')}"
#    @get('model').set('sent_at', new Date($("#datepicker").val()))
#    @get('model').get('transaction').commit()
#    # HACK IS THERE ANOTHER WAY TO DO THIS ?? (SEE BELOW
#    @transitionToRoute "foo.index"

  save: ->
    @get('model').set('bar_date', new Date($("#datepicker").val()))
    @session.flush()
    @transitionToRoute "foo.index"
#      bar = controller.get('content')
#      controller.get('controllers.fooIndex').content.pushObject(bar)
#      controller.transitionToRoute "foo", foo

  cancel: ->
    @transitionToRoute "foo.index"

#  IS THIS A BETTER WAY TO GO ??
#  transitionAfterSave: ( ->
#    console.log 'bar new transitionAfterSave'
##    @transitionToRoute "foo", @get("content")  if @get("content.id")
#    @target.transitionTo "foo.index"
#  ).observes("model.id")
#



