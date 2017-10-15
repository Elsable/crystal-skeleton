class Contact
    def initialize(id : Int32, name : String, email : String)
      @id = id
      @name = name
      @email = email
    end
  
    JSON.mapping(
      id: Int32,
      name: String,
      email: String
    )
  end