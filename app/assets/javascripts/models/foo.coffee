App.Foo = DS.Model.extend
#	bars: DS.hasMany('App.Bar')
	name: DS.attr('string')
	number: DS.attr('number')
	is_happy: DS.attr('boolean')
	foo_date: DS.attr('date')
