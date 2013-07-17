# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dan = Foo.find_or_create_by_name_and_age_and_power("dan", 42, 'thunder')
ray = Foo.find_or_create_by_name_and_age_and_power("ray", 13, 'lightning')
sonya = Foo.find_or_create_by_name_and_age_and_power_and_is_happy("sonya", 18, 'eating', true)

dan.update_attributes( is_happy: true)
ray.update_attributes( is_happy: false)

bar1 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(dan.id, "dan_bar_1", "2013-04-12")
bar2 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(dan.id, "dan_bar_2", "2012-03-15")
bar3 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(dan.id, "dan_bar_3", "2011-05-25")
bar4 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(ray.id, "ray_bar_1", "2046-11-23")
bar5 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(ray.id, "ray_bar_2", "4362-12-24")
bar6 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(sonya.id, "end of the world bar", "2012-12-21")
bar7 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(sonya.id, "bar on fifth avenue", "1969-08-09")
bar8 = Bar.find_or_create_by_foo_id_and_name_and_bar_date(sonya.id, "bar on broadway", "6666-03-22")
