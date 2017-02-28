# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create(
  hostess: 'Brandon James (could also change this to be the stampin up ID)',
  total: 475,
  description: 'Expected attendance is 12. Some detail about the party',
  promo: 'Easter',
  expense: 72,
  expense_description: 'Purchased sample easter colored paper, and x y z',
  date: '1/1/2017',
  attendee_count: '11',
  location: '123 None-ya Business',
  notes: 'Brandon will be providing the snacks'
)

Customer.create(
  name: 'Brandon James',
  address: '123 None-ya Business',
  notes: 'Great customer, Can help others with difficult techniques',
  last_hosted: '1/1/2017',
  attendance: 'Something about attendance'
)

Promo.create(
  party_id: 1,
  date: '1/1/2017',
  customer_id: 1,
  demo_discount: 10,
  five_dollar_coupon: 5,
  first_time: 'yes',
  gifts: '0',
  total_paid: 0,
  payment_type: 'n/a',
  promo_purchase: 'Yes',
  hostess_gift: 'something here',
  notes: 'Notes about this person if they bought a promo'
)

Order.create(
  party_id: 1,
  customer_id: 1,
  retail_amount: 65,
  order_type: 'Workshop',
  hostess: 'Brandon James', # this should be an autofill on the form
  payment_type: 'Credit',
  order_total: 60,
  date: '1/1/2017',
  order_ref: 123_456_7
)
