require('pg')
require('pry')
require_relative('./models/customer')
require_relative('./models/ticket')
require_relative('./models/film')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({
  'first_name' => 'Bob',
  'last_name' => 'Jones',
  'cash' => 50
  })
customer1.save()

customer2 = Customer.new({
  'first_name' => 'Tracy',
  'last_name' => 'Stevens',
  'cash' => 100
  })
customer2.save()

film1 = Film.new({
  'title' => 'Star Wars',
  'price' => 8
  })
film1.save()

film2 = Film.new({
  'title' => 'Jumanji',
  'price' => 8
  })
film2.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id
  })
ticket2.save()

ticket3 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id
  })
ticket3.save()


binding.pry
nil
