require_relative "crmcontact"

class Database
	puts "yay database"
	attr_accessor :contacts_array, :add, :contact
	

	def initialize()
		@contacts_array = Array.new
	end

	def add(contact)
		@contacts_array << contact
		puts "#{@contacts_array}"
	end

	def modify_contact(selection, attribute, modification)
		puts "select an attribute"
      	attribute = gets.chomp

      if @contacts_array.include?(attribute)
        	attribute = selection
      else
        puts "Please select: first name, last name, id, email or notes."
      end

      puts "are you sure that is right?"
      if "yes"
        puts "please type in new value"
        modification = gets.chomp
      else "no"
        puts "please type in new value"
        modification = gets.chomp
      end
	end

	def display_all_contacts

	end

	def display_particular_contact(attribute)

	end

	def display_info_by_attribute(arg)

	end
	def delete_contact(attribute)

	end
end