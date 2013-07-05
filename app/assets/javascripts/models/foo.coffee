App.Foo = Ep.Model.extend
#	bars: DS.hasMany('App.Bar')
	name: Ep.attr('string')
	number: Ep.attr('number')
	is_happy: Ep.attr('boolean')
	foo_date: Ep.attr('date')
