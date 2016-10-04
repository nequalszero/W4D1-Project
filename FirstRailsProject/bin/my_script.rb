require 'addressable/uri'

require 'rest-client'

def index_users
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: '3000',
  path: '/users.html'
  ).to_s

  puts RestClient.get(url)
end

#index_users

def create_user(name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { name: name, email: email } }
  )
end

#create_user("Gizmo", "gizmo@gizmo.gizmo")

def show_user(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}.json"
  ).to_s

  puts RestClient.get(url)
end

# show_user(2)

def update_user(id,name,email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}.json"
  ).to_s

  puts RestClient.patch(
    url,
    { user: { name: name, email: email } }
  )
end

# update_user(1,"Mandy","mandy@gmail.com")

def destroy_user(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}.json"
  ).to_s

  puts RestClient.delete(url)
end

destroy_user(3)
