App.FooInListView = Ember.View.extend
  templateName: "foo/foo_in_list"
  tagName: "li"
  classNameBindings: 'isActive:active',
    isActive: ( ->
      @get("content.id") is @get("controller.active_foo_id")
    ).property("controller.active_foo_id")

