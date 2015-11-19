# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.create({
      firstname: 'Syyrius', 
      name: 'Jio', 
      nickname: 'Syy',
      address: 'La Loupe',
      admin: false,
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0093939393', 
      email: 'xx@xxxx.com'
})

User.create({
      firstname: 'Léïa', 
      name: 'Admin', 
      nickname: 'Ad',
      address: 'Paris',
      admin: true,
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'admin@wcs.fr'
})