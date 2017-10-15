require "kemal"
require "./repositories/contacts_repository"

contacts = ContactsRepository.new

get "/contacts" do |env|
  env.response.headers["Content-Type"] = "application/json"
  contacts.getAllContacts.to_json
end

get "/contacts/:id" do |env|
  env.response.headers["Content-Type"] = "application/json"
  id = env.params.url["id"].to_i
  contacts.getContact(id).to_json
end

Kemal.run
