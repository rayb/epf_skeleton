App.Bar = Ep.Model.extend();

App.Foo = Ep.Model.extend({
  name: Ep.attr('string'),
  power: Ep.attr('string'),
    age: Ep.attr('number'),
  is_happy: Ep.attr('boolean'),
    bars: Ep.hasMany(App.Bar)
})

App.Bar.reopen ({
  foo: Ep.belongsTo(App.Foo),
  name: Ep.attr('string'),
  bar_date: Ep.attr('date'),

  bar_date_display: function() {
  date = moment(this.get('bar_date'));
  if (date)
    return date.format("MMM D, YYYY");
  else
    return "";
  }.property("bar_date")

})