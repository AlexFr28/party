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

julien = User.create({
      firstname: 'julien', 
      name: 'coipel', 
      nickname: 'ludy',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'julien@wcs.fr'
})

alexandre = User.create({
      firstname: 'alexandre', 
      name: 'fouet', 
      nickname: 'alex',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'alexandre@wcs.fr'
})

severine = User.create({
      firstname: 'Séverine', 
      name: 'truc', 
      nickname: 'sev',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'severine@wcs.fr'
})

thierry = User.create({
      firstname: 'thierry', 
      name: 'pouet', 
      nickname: 'titi',
      address: 'La Loupe',
      password: "12345678",
      password_confirmation: "12345678",
      phone: '0123456789', 
      email: 'thierry@wcs.fr'
})



# annivMat = Event.create(
# {
#       name: 'Anniversaire de Mathieu',
#       address: 'Gymnase',
#       date: DateTime.strptime("09/01/2015 17:00", "%d/%m/%Y %H:%M"),
#       theme: 'anniversaire',
#       price_per_person: 5.0,
#       nb_person: 0,
#       limit_payment: DateTime.strptime("06/01/2015 17:00", "%d/%m/%Y %H:%M"),
#       private_event: false,
#       user_id: mathieu.id,
#       description: "Petite description test"
# })

# visite_eglise = Event.create(
# {
#       name: 'Visite cathédrale de chartres',
#       address: 'chartres',
#       date: DateTime.strptime("09/01/2015 17:00", "%d/%m/%Y %H:%M"),
#       theme: 'Visite',
#       price_per_person: 0,0,
#       nb_person: 0,
#       limit_payment: DateTime.strptime("07/01/2015 17:00", "%d/%m/%Y %H:%M"),
#       private_event: false,
#       user_id: mathieu.id,
#       description: "Visite de la superbe cathédrale"
# })

# Apéro = Event.create(
# {
#       name: 'Apéro',
#       address: 'taverne',
#       date: DateTime.strptime("22/11/2015 17:00", "%d/%m/%Y %H:%M"),
#       theme: 'Apéro',
#       price_per_person: 3.0,
#       nb_person: 0,
#       limit_payment: DateTime.strptime("19/11/2015 17:00", "%d/%m/%Y %H:%M"),
#       private_event: false,
#       user_id: julien.id,
#       description: "Super apéro"
# })

# boostemploi = Event.create(
# {
#       name: 'boostemploi',
#       address: 'Gymnase',
#       date: DateTime.strptime("09/11/2015 17:00", "%d/%m/%Y %H:%M"),
#       theme: 'autres',
#       price_per_person: 15.0,
#       nb_person: 0,
#       limit_payment: DateTime.strptime("06/01/2015 17:00", "%d/%m/%Y %H:%M"),
#       private_event: false,
#       user_id: mathieu.id,
#       description: "Boost emploi pour trouver un job !"
# })

# diner = Event.create(
# {
#       name: 'Diner chez caro',
#       address: 'chez caro',
#       date: DateTime.strptime("30/11/2015 17:00", "%d/%m/%Y %H:%M"),
#       theme: 'diner',
#       price_per_person: 8.0,
#       nb_person: 5,
#       limit_payment: DateTime.strptime("27/11/2015 17:00", "%d/%m/%Y %H:%M"),
#       private_event: true,
#       user_id: severine.id,
#       description: "Diner gastronomique"
# })




# halloween = Event.create(
# {
#       name: 'Halloween',
#       address: 'Taverne',
#       date: DateTime.strptime("31/10/2015 20:00", "%d/%m/%Y %H:%M"),
#       theme: 'déguisée',
#       price_per_person: 4.5,
#       nb_person: 20,
#       limit_payment: DateTime.strptime("29/10/2015 16:00", "%d/%m/%Y %H:%M"),
#       private_event: true,
#       user_id: syyrius.id
# })

# tennis = Event.create(
# {
#       name: 'Tournoi de tennis',
#       address: 'Gymnase de La Loupe',
#       date: DateTime.strptime("26/11/2015 12:00", "%d/%m/%Y %H:%M"),
#       theme: 'sport',
#       price_per_person: 0.0,
#       nb_person: 0,
#       private_event: false,
#       user_id: leia.id
# })

# Reservation.create(
# {
#       paid: true,
#       penalty: 0,
#       nb_reservation: 2,
#       note: 5,
#       message: "",
#       user_id: severine.id,
#       event_id: annivMat.id,
#       participation: true
# })

# Reservation.create(
# {
#       paid: true,
#       penalty: 0,
#       nb_reservation: 1,
#       note: 5,
#       message: "",
#       user_id: thierry.id,
#       event_id: tennis.id,
#       participation: false
# })


# Reservation.create(
# {
#       paid: false,
#       penalty: 0,
#       nb_reservation: 1,
#       note: 5,
#       message: "",
#       user_id: julien.id,
#       event_id: diner.id,
#       participation: false
# })


# Reservation.create(
# {
#       paid: false,
#       penalty: 5,
#       nb_reservation: 2,
#       note: 5,
#       message: "",
#       user_id: julien.id,
#       event_id: boostemploi.id,
#       participation: true
# })


# Reservation.create(
# {
#       paid: true,
#       penalty: 0,
#       nb_reservation: 5,
#       note: 5,
#       message: "",
#       user_id: julien.id,
#       event_id: apero.id,
#       participation: false
# })


# Reservation.create(
# {
#       paid: true,
#       penalty: 0,
#       nb_reservation: 2,
#       note: 5,
#       message: "",
#       user_id: severine.id,
#       event_id: annivMat.id,
#       participation: false
# })


# Reservation.create(
# {
#       paid: true,
#       penalty: 0,
#       nb_reservation: 2,
#       note: 5,
#       message: "",
#       user_id: julien.id,
#       event_id: annivMat.id,
#       participation: false
# })

