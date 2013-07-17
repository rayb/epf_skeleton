App.BarInListView = Ember.View.extend
  templateName: "bar/bar_in_list"
  tagName: "li"
  classNameBindings: 'isActive:active',
    isActive: ( ->
      @get("content.id") is @get("controller.active_bar_id")
    ).property("controller.active_bar_id")


