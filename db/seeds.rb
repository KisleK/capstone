Dog.create!([
  {name: "Lucy", breed: "Pitbull", gender: "Female", medication: nil, owner_id: 12, number_1: false, number_2: false},
  {name: "Grayson", breed: "German Shepard", gender: "Male", medication: nil, owner_id: 12, number_1: false, number_2: false},
  {name: "Hope", breed: "Chocolate Lab", gender: "Female", medication: nil, owner_id: 12, number_1: false, number_2: false}
])
Owner.create!([
  {first_name: "Kyle", last_name: "Kuhn", email: "kyle@gmail.com", address: "331 W Happfield Dr.", password: nil, password_digest: "$2a$10$iRc1CK6.Y53uqck9wJQN6ezKZGoHagBmxRlz4GZV52ea1S.w/nSl6", phone_number: "801-386-3282", bio: "DOGS DOGS DOGS", city: "Arlington Heights", state: "Il", zip_code: 60004},
  {first_name: "Joe", last_name: "Bob", email: "joe@gmail.com", address: nil, password: nil, password_digest: "$2a$10$xL1xnQ9hF/VVjEcUTSBUkuNPPQTaseyc6jtkL.C4UJXJrW30kS9tu", phone_number: nil, bio: nil, city: nil, state: nil, zip_code: nil},
  {first_name: "Billy", last_name: "Bob", email: "billy@gmail.com", address: nil, password: nil, password_digest: "$2a$10$XznjXRTpAyZk42lXDb5QcOfTuJyC8rJG/RtAV5lJ6Y6hjyjhMKwQa", phone_number: nil, bio: nil, city: nil, state: nil, zip_code: nil}
])
Walk.create!([
  {owner_id: nil, first_name: "Kyle", name: "Grayson", breed: "German Shepard", gender: "4", age: 4, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Grayson", breed: "German Shepard", gender: "Male", age: 4, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "lu", breed: "Pitbill", gender: "fema", age: 7, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Hope", breed: "Chocolate Lab", gender: "Female", age: 1, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Hope", breed: "PitBull", gender: "7", age: 7, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Hope", breed: "PitBull", gender: "Female", age: 4, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Hope", breed: "Pitbill", gender: "Female", age: 7, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Hope", breed: "Chocolate Lab", gender: "female", age: 1, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Gray", breed: "German Shepard", gender: "Male", age: 7, last_name: "Kuhn", status: "walk accepted", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Grayson", breed: "German Shepard", gender: "Male", age: 4, last_name: "Kuhn", status: "walk completed", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "G", breed: "German Shepard", gender: "Male", age: 4, last_name: "Kuhn", status: "walk completed", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "G", breed: "German Shepard", gender: "Male", age: 4, last_name: "Kuhn", status: "walk completed", walker_id: nil},
  {owner_id: 12, first_name: "Kyle", name: "G", breed: "PitBull", gender: "7", age: 7, last_name: "Kuhn", status: "walk requested", walker_id: nil},
  {owner_id: nil, first_name: "Kyle", name: "Lucy", breed: "PitBull", gender: "Female", age: 4, last_name: "Kuhn", status: "walk completed", walker_id: nil},
  {owner_id: 12, first_name: "Kyle", name: "Hope", breed: "Chocolate Lab", gender: "Female", age: 1, last_name: "Kuhn", status: "walk requested", walker_id: nil},
  {owner_id: 12, first_name: "Kyle", name: "Gray", breed: "German Shepard", gender: "Male", age: 4, last_name: "Kuhn", status: "walk requested", walker_id: nil}
])
Walker.create!([
  {first_name: "Ken", last_name: "Lucovitz", address: "331 W Happfield Dr.", password: nil, password_digest: "$2a$10$bj2N2w7JCfEX.EIjD4mx1.s0eXs.w.jKjckuFZ4b1I/O0yNZpH9Ra", email: "ken@gmail.com", phone_number: "801-458-2907", city: "Arlington Heights", state: "Il", zip_code: 60004, bio: "WALK WALK WALK", walk_id: nil},
  {first_name: "Bob", last_name: "Joe", address: "123 main st.", password: nil, password_digest: "$2a$10$XVzbY2xDA5vYzBI2xs7eQeUR7FwZDbANsAZGPNMM/Sg1D/wIYgvaO", email: "bob@gmail.com", phone_number: "123-123-1234", city: nil, state: nil, zip_code: nil, bio: nil, walk_id: nil}
])
