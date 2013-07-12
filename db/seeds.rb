# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dan = Foo.find_or_create_by_name_and_age_and_power("dan", 42, 'thunder')
ray = Foo.find_or_create_by_name_and_age_and_power("ray", 13, 'lightning')

bar1 = Bar.find_or_create_by_foo_id_and_name(dan.id, "dan_bar_1")
bar2 = Bar.find_or_create_by_foo_id_and_name(dan.id, "dan_bar_2")
bar3 = Bar.find_or_create_by_foo_id_and_name(dan.id, "dan_bar_3")
bar4 = Bar.find_or_create_by_foo_id_and_name(ray.id, "ray_bar_1")
bar5 = Bar.find_or_create_by_foo_id_and_name(ray.id, "ray_bar_2")
