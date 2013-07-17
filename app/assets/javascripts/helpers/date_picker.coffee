App.DatePicker = Ember.View.extend
  classNames: ["ember-text-field"]
  tagName: "input"
  attributeBindings: ["data", "value", "format", "readonly", "type", "size"]
  size: "16"
  type: "text"
  format: "yyyy-mm-dd"
  value:( ->
    date = @get("data")
    if date
      date.format @get("format")
    else
      ""
  ).property("bar_date")

  didInsertElement: ->
    self = this
    onChangeDate = (ev) ->

      # console.log($("#datepicker").attr("value"));
      console.log $("#datepicker").val()
      self.set "data", ev.date

    @$().datepicker(format: @get(@get("format"))).on "changeDate", onChangeDate

