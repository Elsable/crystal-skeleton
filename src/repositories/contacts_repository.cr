require "../models/contact"

class ContactsRepository
  def initialize
    @contacts = [
      Contact.new(1, "Matthew Shaw", "shaw500@gmail.com"),
      Contact.new(2, "Taffany Leung", "taffanyl@gmail.com"),
    ]
  end

  def getAllContacts
    @contacts
  end

  def getContact(id : Int32)
    contact = @contacts.find { |c| c.id == id }
    raise Exception.new("Contact with id #{id} does not exist.") if contact == nil 
    contact
end
end
