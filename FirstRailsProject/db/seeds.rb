# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

travis = User.create(username: 'Travis')    # 1
amanda = User.create(username: 'Amanda')    # 2
gizmo = User.create(username: 'Gizmo')      # 3
mandy = User.create(username: 'Mandy')      # 4
dino = User.create(username: 'Dino')        # 5

travis_c1 = Contact.create(name: 'Amanda', email: 'amanda@gmail.com', user_id: 1)
travis_c2 = Contact.create(name: 'Gizmo', email: 'gizmo@gizmo.gizmo', user_id: 1)
travis_c3 = Contact.create(name: 'Mandy', email: 'mandy@gmail.com', user_id: 1)
travis_c4 = Contact.create(name: 'Dino', email: 'dino@gmail.com', user_id: 1)

amanda_c1 = Contact.create(name: 'Travis', email: 'travis@gmail.com', user_id: 2)




ContactShare.create(contact_id: 1, user_id: 1)
ContactShare.create(contact_id: 2, user_id: 1)
ContactShare.create(contact_id: 3, user_id: 1)
ContactShare.create(contact_id: 4, user_id: 1)
ContactShare.create(contact_id: 2, user_id: 2)
ContactShare.create(contact_id: 3, user_id: 2)
ContactShare.create(contact_id: 4, user_id: 2)
ContactShare.create(contact_id: 5, user_id: 2)
