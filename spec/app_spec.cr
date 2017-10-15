require "./spec_helper"
require "json"

describe "Contacts API tests" do

  it "GET /contacts should return all contact" do
    get "/contacts"
    contacts = JSON.parse(response.body)

    contacts.size.should eq 2
    contact = contacts.first

    contact["id"].as_i.should eq 1
    contact["name"].should eq "Matthew Shaw"
    contact["email"].should eq "shaw500@gmail.com"
  end

  it "GET /contacts/1 should return first contact" do
    get "/contacts/1"
    contact = JSON.parse(response.body)

    contact["id"].as_i.should eq 1
    contact["name"].should eq "Matthew Shaw"
    contact["email"].should eq "shaw500@gmail.com"
  end
end
