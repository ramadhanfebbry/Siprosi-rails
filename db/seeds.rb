# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  %w(admin ppic produksi cetak_genteng rendam_genteng).each do |a|
    User.create(email: "#{a}@siprosi.com", username: a, name: a, password: "12345678", role: a)
  end
