# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Employee.destroy_all

employees = Employee.create([{ name: 'Lisa Fong', dob: '24/12/84' }, { name: 'Jeff Gurr', dob: '23/09/85' }, { name: 'Peter McKelvy', dob: '28/02/83' }, { name: 'Greg Larkin', dob: '01/06/85' }, { name: 'Josh Elkin', dob: '25/12/85' }, { name: 'Jeff Cohen', dob: '20/03/89' }])

#data = [{name: 'Lisa Fong', dob: '24/12/84'}, {name: 'Jeff Gurr', dob: '23/09/85'}, {name: 'Peter McKelvy', dob: '28/02/83'}, {name: 'Greg Larkin', dob: '01/06/85'}, {name: 'Josh Elkin', dob: '25/12/85'}, {name: 'Jeff Cohen', dob: '20/03/89'}]

#data.each do |employee_info|
#  e = Employee.new
#  e.name = employee_info[:name]
#  e.dob = employee_info[:dob]
#  e.save
#end

puts "There are now #{Employee.count} employees in the database"

Division.destroy_all

divisions = Division.create([{name: 'Finance'}, {name: 'Marketing'}, {name: 'Creative'}, {name: 'Operations'}])

#data = [{name: 'Finance'}, {name: 'Marketing'}, {name: 'Creative'}, {name: 'Operations'}]

#data.each do |division_info|
#  d = Division.new
#  d.name = division_info[:name]
#  d.save
#end

puts "There are now #{Division.count} divisions in the database"

Title.destroy_all

titles = Title.create([{name: 'President'}, {name: 'Vice President'}, {name: 'Director'}, {name: 'Manager'}])

#data = [{name: 'President'}, {name: 'Vice President'}, {name: 'Director'}, {name: 'Manager'}]

#data.each do |title_info|
#  t = Title.new
#  t.name = title_info[:name]
#  t.save
#end

puts "There are now #{Title.count} titles in the database"

Role.destroy_all

# date = [{open: 0, current: 0, name: 'Vice President Marketing', employee_id: 1, division_id: 2, title_id: 2, salary: 250000}, 
#  {open: 0, current: 1, name: 'Cheif Marketing Office', employee_id: 1, division_id: 2, title_id: 2, salary: 500000},
#  {open: 0, current: 0, name: 'Creative Manager', employee_id: employees.second, division_id: divisions.third, title_id: titles.fourth, salary: 250000}, 
#  {open: 0, current: 1, name: 'Creative Director', employee_id: employees.second, division_id: divisions.third, title_id: titles.third, salary: 500000}, 
#  {open: 0, current: 1, name: 'Cheif Financial Office', employee_id: employees.third, division_id: divisions.first, title_id: titles.second, salary: 500000}, 
#  {open: 0, current: 1, name: 'Cheif Operating Office', employee_id: employees.fourth, division_id: divisions.fourth, title_id: titles.second, salary: 500000}, 
#  {open: 0, current: 1, name: 'Co-Head IT', employee_id: employees.fifth, division_id: divisions.fourth, title_id: titles.first, salary: 500000}, 
#  {open: 0, current: 1, name: 'Co-Head IT', employee_id: employees.sixth, division_id: divisions.fourth, title_id: titles.first, salary: 500000},
#  {open: 1, current: 0, name: 'Office Manager', employee_id: '', division_id: divisions.fourth, title_id: titles.fourth, salary: 100000},
# {open: 1, current: 0, name: 'Creative Manager', employee_id: '', division_id: divisions.fourth, title_id: titles.fourth, salary: 100000}]

#data.each do |role_info|
#  r = Role.new
#  r.open = role_info[:open]
#  r.current = role_info[:current]
#  r.name = role_info[:name]
#  r.employee_id = role_info[:employee_id]
#  r.division_id = role_info[:division_id]
#  r.title_id = role_info[:title_id]
#  r.salary = role_info[:salary]
#  r.save
#end
#
#puts "There are now #{Role.count} roles in the database"

Role.create([{open: 0, current: 0, name: 'Vice President Marketing', employee_id: employees.first, division_id: divisions.second, title_id: titles.second, salary: 250000}, {open: 0, current: 1, name: 'Cheif Marketing Office', employee_id: employees.first, division_id: divisions.second, title_id: titles.second, salary: 500000}, {open: 0, current: 0, name: 'Creative Manager', employee_id: employees.second, division_id: divisions.third, title_id: titles.fourth, salary: 250000}, {open: 0, current: 1, name: 'Creative Director', employee_id: employees.second, division_id: divisions.third, title_id: titles.third, salary: 500000}, {open: 0, current: 1, name: 'Cheif Financial Office', employee_id: employees.third, division_id: divisions.first, title_id: titles.second, salary: 500000}, {open: 0, current: 1, name: 'Cheif Operating Office', employee_id: employees.fourth, division_id: divisions.fourth, title_id: titles.second, salary: 500000}, {open: 0, current: 1, name: 'Co-Head IT', employee_id: employees.fifth, division_id: divisions.fourth, title_id: titles.first, salary: 500000}, {open: 0, current: 1, name: 'Co-Head IT', employee_id: employees.last, division_id: divisions.fourth, title_id: titles.first, salary: 500000}, {open: 1, current: 0, name: 'Office Manager', employee_id: '', division_id: divisions.fourth, title_id: titles.fourth, salary: 100000}, {open: 1, current: 0, name: 'Creative Manager', employee_id: '', division_id: divisions.fourth, title_id: titles.fourth, salary: 100000}])


puts "There are now #{Role.count} roles in the database"

