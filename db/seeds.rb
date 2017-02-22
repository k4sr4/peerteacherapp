# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

peerTeachers = [{:netID => 'jsmith', :name => 'John Smith', :courselist => '121,221', :timelist => '100,101'},
    	        {:netID => 'cooper', :name => 'Alice Cooper', :courselist => '312', :timelist => '102,103'},
    	        {:netID => 'cr7', :name => 'Cristiano Ronaldo', :courselist => '222,315', :timelist => '104'},
  	           ]
  	           
officeHours = [{:timeID => 100, :netID => 'jsmith', :dow => 'TUE', :sHour => 10, :sMin => 30, :eHour => 12, :eMin => 30},
               {:timeID => 101, :netID => 'jsmith', :dow => 'THU', :sHour => 10, :sMin => 30, :eHour => 12, :eMin => 30},
               {:timeID => 102, :netID => 'cooper', :dow => 'MON', :sHour => 1, :sMin => 00, :eHour => 2, :eMin => 30},
               {:timeID => 103, :netID => 'cooper', :dow => 'WED', :sHour => 2, :sMin => 15, :eHour => 3, :eMin => 45},
               {:timeID => 104, :netID => 'cr7', :dow => 'FRI', :sHour => 9, :sMin => 50, :eHour => 1, :eMin => 50},
        ]   	          

peerTeachers.each do |pt|
  PeerTeacher.create!(pt)
end

officeHours.each do |time|
  OfficeHour.create!(time)
end