

class Contact
	attr_accessor :firstname, :lastname, :email, :notes, :id

	@@new_id = 0
	def initialize(firstname, lastname, email, notes) 
		@id = id_counter
		@firstname = firstname 
		@lastname = lastname
		@email = email
		@notes = notes
	end

	def display_contact
		["first name: #{@firstname}", "last name: #{@lastname}", "email: #{@email}", "notes: #{@notes}"]
	end

	def id_counter
		@@new_id += 1
	end
end

