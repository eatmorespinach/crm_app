require_relative "crmdatabase"

#puts "\e[H\e[2J"
class Runner

  db = Database.new
 

  # Display the crm greeting

    puts ""
    puts "Welcome to the cool CRM tool"
    puts ""

    

  loop do
  	# db.modify_contact()
    puts "type |add| or |modify| or |display all| or |display contact| or |display attribute| |delete| or |exit| to execute a command"

    input = gets.chomp

    case input
      #attributes get added to @contacts_array
    when "add"
      puts "type your first name:"
      firstname = gets.chomp
      puts "type your last name:"
      lastname = gets.chomp
  
  
      puts "type your email:"
      email = gets.chomp
      puts "type your notes:"
      notes = gets.chomp
      db.add(Contact.new(firstname, lastname, email, notes))
      puts ""

      # Get the various contact attributes from the user and store them to variables
      # Insert those variables in a new contact and add them to the database
    

    when "modify"
      puts "which attribute do you want to modify?"
      attribute = gets.chomp
      puts "enter yes if you're sure. Enter no if not."
      choice = gets.chomp

      if choice == "yes"
        puts "what value do you want to change it to?"
        new_attribute = gets.chomp
        db.modify_contact(attribute, new_attribute)
      end


      # Prompt the user to select an attribute
      # Confirm that they have selected the correct attribute
      # If 'yes', prompt them to type the new value for the attribute
      # Display that the contact was successfully updated to the user 
    when "display all"
      db.display_all_contacts
      # Display all of the contacts in the database to the user
    when "display contact"
      puts "which contact first name would you like to display?"  
        name = gets.chomp
        db.display_particular_contact(name)
      # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
      # Store the input in a variable and display the corresponding contact
    when "display attribute"
      puts "which attributes would you like to display?"
        arg = gets.chomp
        db.display_info_by_attribute(arg)
      # Prompt the user to search the database by one of the five attributes (E.g. "ID")
      # Display all of the the contacts by that attribute
    when "delete"
      puts "which first name do you want to delete?"
      firstname = gets.chomp
      puts "enter yes if you're sure. Enter no if not."
      choice = gets.chomp

      if choice == "yes"
        db.delete_contact(firstname)
      end
      puts "successfully deleted user."
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
end

Runner.new()




