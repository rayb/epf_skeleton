App.BarsNewController = Ember.ObjectController.extend
  needs: ['fooIndex']

  init: ->
    @cont = this

  save: ->
    @get('model').set('bar_date', new Date($("#datepicker").val()))
    @get('model.session').flush()

# TODO: Question: why doesn't work with then but works with transition_after_save?
#    @get('model.session').flush().then ->
#      bar = @cont.get('content')
#      foo = @cont.get('controllers.fooIndex').content
#      foo.get('bars').pushObject(bar)
#      @transitionToRoute "foo.index"

  cancel: ->
    @transitionToRoute "foo.index"

  transition_after_save: ( ->
    if @get('content.id')
      bar = @cont.get('content')
      foo = @cont.get('controllers.fooIndex').content
      foo.get('bars').pushObject(bar)
      @transitionToRoute "foo.index"
   ).observes("content.id")




