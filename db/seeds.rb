# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

syyrius = User.create({
      firstname: 'Syyrius', 
      name: 'Jio', 
      nickname: 'Syy',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0093939393', 
      email: 'xx@xxxx.com'
})

leia = User.create({
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

mathieu = User.create({
      firstname: 'Mathieu', 
      name: 'Carbonel', 
      nickname: 'Karbo',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'mathieu@wcs.fr'
})

annivMat = Event.create(
{
      name: 'Anniversaire de Mathieu',
      address: 'Gymnase',
      date: DateTime.strptime("09/01/2015 17:00", "%d/%m/%Y %H:%M"),
      theme: 'anniversaire',
      price_per_person: 5.0,
      nb_person: 0,
      limit_payment: DateTime.strptime("06/01/2015 17:00", "%d/%m/%Y %H:%M"),
      private_event: false,
      user_id: mathieu.id
})

Event.create(
{
      name: 'Halloween',
      address: 'Taverne',
      date: DateTime.strptime("31/10/2015 20:00", "%d/%m/%Y %H:%M"),
      theme: 'déguisée',
      price_per_person: 4.5,
      nb_person: 20,
      limit_payment: DateTime.strptime("29/10/2015 16:00", "%d/%m/%Y %H:%M"),
      private_event: true,
      user_id: syyrius.id
})

Event.create(
{
      name: 'Tournoi de tennis',
      address: 'Gymnase de La Loupe',
      date: DateTime.strptime("26/11/2015 12:00", "%d/%m/%Y %H:%M"),
      theme: 'sport',
      price_per_person: 0.0,
      nb_person: 0,
      private_event: false,
      user_id: leia.id
})

Reservation.create(
{
      paid: true,
      penalty: 1.05,
      nb_reservation: 2,
      note: 5,
      message: "",
      user_id: mathieu.id,
      event_id: annivMat.id,
      participation: false
})
