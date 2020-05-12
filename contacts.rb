
@contact  = []

def mainMenu
  addSpace
  puts 'Menu'
  puts "1) Create Contact"
  puts "2) View Contacts"
  puts "3) Delete Contact"
  puts "4) Edit Contact"
  puts '5) Exit'
end  

def user_choice
  mainMenu
  input = gets.chomp
  case input
    when "1"
      addContact
    when "2"
      viewContact
    when "3"
      removeContact
    when "4"
      editContact
    when "5"
      puts "--------- See ya later aligator --------"
      Exit
    else
      puts "'#{input}' Is not valid! Try again please"
  end
  user_choice
end

def addContact
  puts "Enter name"
  name = gets.chomp
  @contact << name
  # puts contact
end

def viewContact
    if @contact.length <= 0
      puts "There are no contacts"
    else
    @contact.each do |cont|
      puts "- #{cont.split.map(&:capitalize).join(' ')}"
    end
  end
end

def addSpace
  puts '-'* 20
  puts
end

def removeContact
  if @contact.length <= 0
    puts "There are no contacts to delete. Please enter a contact!"
  else
    @contact.pop
  end
end

def editContact
  puts "What index would you like to change?"
  arrIndex = gets.to_i
  puts "What is your new contacts first name?"
  newContact = gets

  @contact[arrIndex] = newContact
  end

user_choice

