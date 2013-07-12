App.Foo = Ep.Model.extend
  name: Ep.attr('string')
  power: Ep.attr('string')
#	age: Ep.attr('number')
#  is_happy: Ep.attr('boolean')
  # foo_date: Ep.attr('date')

App.Bar = Ep.Model.extend
  foo: Ep.belongsTo('App.Foo')
  name: Ep.attr('string')

App.Foo.reopen
  bars: Ep.hasMany('App.Bar')
