

class Contact
	attr_accessor :id, :firstname, :lastname, :email, :notes

	def initialize(id, firstname, lastname, email, notes) 
		@id = id
		@firstname = firstname 
		@lastname = lastname
		@email = email
		@notes = notes
	end

	def display_contact
		["id: #{@id}", "first name: #{@firstname}", "last name: #{@lastname}", "email: #{@email}", "notes: #{@notes}"]
	end
end

# c = Contact.new
# puts c.display_contact

#write method that checks to make sure every attribute has had a value input



