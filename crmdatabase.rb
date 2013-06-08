require_relative "crmcontact"

class Database
	puts "yay database"
	attr_accessor :contacts_array, :add, :contact
	

	def initialize()
		@contacts_array = Array.new
	end

	def add(contact)
		@contacts_array << contact

	end

	def modify_contact(attribute, new_attribute)
			@contacts_array.each { |i|
			if attribute == "first name" 
			i.firstname = new_attribute
			elsif attribute == "last name" 
				i.lastname = new_attribute
			elsif attribute == "email" 
				i.email = new_attribute
			elsif attribute == "notes" 
				i.notes = new_attribute
			else
				puts "no attributes found"
			end }

	end

	def display_all_contacts
		@contacts_array.each do |i|
			puts ["\n \nid: #{i.id}", "first name: #{i.firstname}", "last name: #{i.lastname}", "email: #{i.email}", "notes: #{i.notes}\n \n\n"]
		end
	end

	def display_particular_contact(name)
		@contacts_array.each { |i|
			if i.firstname == name
				puts
				puts
				puts i.display_contact
				puts
				puts
			else
				puts
				puts
				puts "no records found"
				puts
				puts
			end }
		
	end

	def display_info_by_attribute(arg)
		@contacts_array.each { |i|
			if arg == "first name" 
				puts i.firstname
			elsif arg == "last name" 
				puts i.lastname
			elsif arg == "email" 
				puts i.emaiil
			elsif arg == "notes" 
				puts i.notes
			else
				puts "no attributes found"
			end }

	end
	def delete_contact(firstname)
		@contacts_array.each { |i|
			if i.firstname == firstname
				@contacts_array.shift 
				#delete the entire contact out of array. 
			else "no attriutes found"
			end}

	end
end
