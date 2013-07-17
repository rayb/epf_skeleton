App.BarsNewController = Ember.ObjectController.extend

  save: ->
    @get('model').set('bar_date', new Date($("#datepicker").val()))
    # TODO  WHY DOESN'T SESSION THINK THAT BAR IS DIRTY
    @session.flush()
    @transitionToRoute "foo.index"

  cancel: ->
    @transitionToRoute "foo.index"




