require './lib/address_book'
require './lib/Phone'
require './lib/Address'
require './lib/Email'

def main_menu
  puts 'Press "n" to add a new contact.'
  puts 'Press "l" to list all your available contacts.'
  puts 'Press "x" to exit.'

  main_choice = gets.chomp

  if main_choice == "n"
    add_contact
  elsif main_choice == "l"
    list_contacts
  elsif main_choice == "x"
    puts "Goodbye!"
  else
    puts "That's not a valid option."
    puts "\n"
    main_menu
  end
end

def add_contact
  puts "What is your contact's first name?"
  first_name = gets.chomp
  puts "What is your contact's last name?"
  last_name = gets.chomp
  new_contact = Contact.create(first_name, last_name)
  puts "Contact added. Press 'p' to add an associated phone number.\n"
  user_input = gets.chomp
  if user_input == "p"
    add_phone
  else
    main_menu
  end
  main_menu
end

def add_phone
  puts "Select a contact to add a phone number.\n"
  Contact.all.each_with_index do |contact, index|
    puts "#{index + 1}. #{contact.show_name}"
  end
  user_input = gets.chomp.to_i
  user_input -= 1
  new_contact = Contact.all[user_input].show_name
  puts "You selected: " + new_contact
  puts "Enter a new phone number please:"
  new_phone = gets.chomp

  phone_to_add = Phone.new(new_phone)
  Contact.all[new_contact.to_i].add_number(phone_to_add)

  puts "Phone number added.\n"
  puts "\n"
  main_menu
end

def list_contacts
  Contact.all.each_with_index do |contact, index|
    puts "#{index + 1}. #{contact.show_name}"
    # puts "#{contact.show_phones}"
    #start here next time? doesn't show numbers.
  end
  main_menu
end
main_menu

