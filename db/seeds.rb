# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
admin = Factory.create(:user, :email => 'admin@loonyb.in',
                              :display_name => 'Admin',
                              :password => 'topsecret',
                              :password_confirmation => 'topsecret'
                      )
