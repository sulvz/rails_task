# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

  customer1 = Customer.create(first_name: 'Dean', last_name: 'Martin' , email: 'dean.martin@culini.com')
  customer2 = Customer.create(first_name: 'Buddy',last_name: 'Rich' , email: 'buddy.rich@culini.com')
  customer3 = Customer.create(first_name: 'Miles', last_name: 'Davis', email: 'miles.davis@culini.com')
  customer4 = Customer.create(first_name: 'Billie',last_name: 'Holiday',email: 'billie.holiday@culini.com')

# successful charges
  customer1.charges.create(amount: '2000', paid: true , refunded: false)
  customer1.charges.create(amount: '3000', paid: true , refunded: false)
  customer1.charges.create(amount: '4000', paid: true , refunded: false)
  customer1.charges.create(amount: '1000', paid: true , refunded: false)
  customer1.charges.create(amount: '5000', paid: true , refunded: false)

  customer2.charges.create(amount: '9000', paid: true , refunded: false)
  customer2.charges.create(amount: '7000', paid: true , refunded: false)
  customer2.charges.create(amount: '8000', paid: true , refunded: false)

  customer3.charges.create(amount: '2000', paid: true , refunded: false)

  customer4.charges.create(amount: '3000', paid: true , refunded: false)

# failed  charges
  customer3.charges.create(amount: '2000', paid: false , refunded: false)
  customer3.charges.create(amount: '3500', paid: false , refunded: false)
  customer3.charges.create(amount: '1500', paid: false , refunded: false)

  customer4.charges.create(amount: '4000', paid: false , refunded: false)
  customer4.charges.create(amount: '5000', paid: false , refunded: false)

# disputed charges
 customer1.charges.create(amount: '2700', paid: true , refunded: true)
 customer1.charges.create(amount: '4800', paid: true , refunded: true)
 customer1.charges.create(amount: '3200', paid: true , refunded: true)

 customer2.charges.create(amount: '2000', paid: true , refunded: true)
 customer2.charges.create(amount: '4000', paid: true , refunded: true)

