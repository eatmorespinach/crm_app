

class Contact
	attr_accessor :id, :firstname, :lastname, :email, :notes

	def initialize(id="1", firstname="zena", lastname="bielewicz", email="email", notes="notes") 
		@id = id
		@firstname = firstname 
		@lastname = lastname
		@email = email
		@notes = notes
	end

	def display_contact
		puts
		puts
		["id: #{@id}", "first name: #{@firstname}", "last name: #{@lastname}", "email: #{@email}", "notes: #{@notes}"]
		puts
		puts
	end
end

# c = Contact.new
# puts c.display_contact

#write method that checks to make sure every attribute has had a value input



