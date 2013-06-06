require_relative "crmdatabase"

#puts "\e[H\e[2J"

db = Database.new
id = 1000

# Display the crm greeting

  @database_session = Database.new()

loop do
	puts ""
	puts "Welcome to the cool CRM tool"
	puts ""
  puts "type |add| or |display all| or |display attribute| or |delete| or |exit| to execute a command"

  input = gets.chomp

  case input
  when "add"
    puts ""
    database.add

    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
  when "modify"
    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user 
  when "display all"
    # Display all of the contacts in the database to the user
  when "display contact"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact
  when "display attribute"
    # Prompt the user to search the database by one of the five attributes (E.g. "ID")
    # Display all of the the contacts by that attribute
  when "delete"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display a prompt to confirm "yes" or "no"
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully deleted to the user
    # If 'no', prompt them to type the new value for the attribute
    # Display that the contact could not be found to the user
  when "exit"
    # Exit from the program
  	break
  end
end






























# puts "add"

# puts "modify"

# puts "display all"

# puts "display contact"

# puts "display attribute"

# puts "delete"

# puts "exit"


# userinput = gets.chomp

# if user types "add", user gets.chomps first name, gets.chomps last name, 
# gets.chomps email, and gets.chomps notes

# if user types "modify", user can modify id, firstname, lastname, email, and notes
# 		if an attribute is selected, program asks "yes" or "no" to confirm selection
# 			if "yes" is typed, then that field can changed then modified. 
# 			if "no" is typed, goes back to main menu. 

# if use types "display all", user shown all contacts that that exist under that session. 

# if "display contact" is typed, you shown a particular contact

# if "display attribute" is typed, promted to enter an attribute. That attribute should be 
# 	displayed to the screen across all records

# if "delete is typed", cpu asks which attribute to be deleted. 

# if "exit" is typed, program exits and returns to command line. 


