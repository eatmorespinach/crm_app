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

	# def modify_contact(selection, attribute, modification)
		# puts "select an attribute"
  #     	attribute = gets.chomp

  #     if @contacts_array.include?(attribute)
  #       	attribute = selection
  #     else
  #       puts "Please select: first name, last name, id, email or notes."
  #     end

  #     puts "are you sure that is right?"
  #     if "yes"
  #       puts "please type in new value"
  #       modification = gets.chomp
  #     else "no"
  #       puts "please type in new value"
  #       modification = gets.chomp
	# end

	def display_all_contacts
		@contacts_array.each do |i|
			puts ["\n \nid: #{i.id}", "first name: #{i.firstname}", "last name: #{i.lastname}", "email: #{i.email}", "notes: #{i.notes}\n \n\n"]
		end
	end

	def display_particular_contact(id)
		# puts "which contact id would you like to display?"
		# id = gets.chomp
		@contacts_array.each { |i|
			if i.id == id
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

	end
	def delete_contact(attribute)

	end
end