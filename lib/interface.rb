require_relative "methods"
require_relative "scraper"

gift_list = {
  # key => value
  "ps5" => false,
  "brakes" => true,
  "socks" => false
}


puts "🎁~~~~~~~~~~~~~~~~~~~~~~~~~~~~🎁"
puts "Welcome to the christmas list!"
puts "🎁~~~~~~~~~~~~~~~~~~~~~~~~~~~~🎁"

action = "anything but quit"
# loop
until action == "quit"
  puts "Which action? [list|add|delete|mark|idea|quit]"
  action = gets.chomp

  # if action == "list"
  case action # thing we want to compare
  when "list"
    # Iterate over the hash (.each_with_index)
      # format the text
      #  1 - [ ] sockets
      #  2 - [X] ruby book
      #  3 - [ ] macbook pro
       # p item
      # p purchased
      # p index
      # if purchased
      #   "X"
      # else
      #   " "
      # end
    display_list(gift_list)
  when "add"
    # Ask the user which gift to add
    puts "What gift do you want to add?"
    # Store the answer
    gift = gets.chomp
    # Add the gift to the gift list (CRUD create: hash_name[new_key] = new_value)
    gift_list[gift] = false
    # Tell the user the gift was added
    puts "#{gift.capitalize} was added to the list"
  when "delete"
    # Display the items
    display_list(gift_list)
    # Ask the user what they want to delete (number/index)
    puts "Which number do you want to delete?"
    # index = get the user answer (integer)
    index = gets.chomp.to_i - 1
    # find the gift (key) somehow... (.keys)
    gifts_array = gift_list.keys
    gift = gifts_array[index]
    # Delete the gift from the hash (CRUD delete hash.delete(key))
    gift_list.delete(gift)
    # Tell the user the gift was deleted
    puts "#{gift} was deleted."
  when "mark"
    # Display the gift_list
    display_list(gift_list)
    # Ask the user what they want to mark (number/index)
    puts "Which number do you want to mark?"
    # index = get the user answer (integer)
    index = gets.chomp.to_i - 1
    # find the gift (key) somehow... (.keys)
    gifts_array = gift_list.keys
    gift = gifts_array[index]
    # Change the value of the selected gift (CRUD Update hash_name[key] = new_value)
    # if gift_list[gift]
    #   gift_list[gift] = false
    # else
    #   gift_list[gift] = true
    # end
    gift_list[gift] = !gift_list[gift]
    # tell the user the gift was updated
    puts "#{gift.capitalize} was updated."
  when "idea"
    # Make sure that your scraper works (with local file)
    # Ask the user for a keyword
    puts "What do you want to search for on Etsy?"
    # Store the keyword
    keyword = gets.chomp
    # Scrape the html for 5 gifts
    # Turn the scraper into a method
    # The scrape method should return a HASH with 5 gifts
    etsy_gifts = scrape(keyword)
    # Display the gifts hash (reuse display_list)
    display_list(etsy_gifts)
    # Ask the user which number gift do they want to add to gift list
    puts "Which number do you want to import?"
    # Get the keys from the esty hash
    index = gets.chomp.to_i - 1
    # find the gift using the index
    gift = etsy_gifts.keys[index]
    # Add the gift from etsy to the gift_list
    gift_list[gift] = false
    # Tell the user that the gift was imported
    puts "#{gift} was imported."
  when "quit"
    puts "Goodbye"
  else
    puts "Wrong action, try again."
  end
end


# Step 1 - The menu loop

# Welcome the user
# Ask the user which action they want to do [list|add|delete|quit]
# get the user answer and store it in a variable (string)
# Direct the user to the right action
# Display a TODO message 
# loop until the user types "quit"

# Step 2 - Listing the gift

# Iterate over the hash (.each_with_index)
# format the text
#  1 - [ ] sockets
#  2 - [X] ruby book
#  3 - [ ] macbook pro


# Step 3 - Adding an item

# Ask the user which gift to add
# Store the answer
# Add the gift to the gift list (CRUD create: hash_name[new_key] = new_value)
# Tell the user the gift was added

# Step 4 - Delete

# Display the items
# Ask the user what they want to delete (number/index)
# index = get the user answer (integer)
# find the gift (key) somehow... (.keys)
# Delete the gift from the hash (CRUD delete hash.delete(key))
# Tell the user the gift was deleted

# Step 5 - Mark a gift as purchased

# Display the gift_list
# Ask the user what they want to delete (number/index)
# index = get the user answer (integer)
# find the gift (key) somehow... (.keys)
# Change the value of the selected gift (CRUD Update hash_name[key] = new_value)
# tell the user the gift was updated

# STEP 6 - Import from Etsy

# Make sure that your scraper works (with local file)
# Ask the user for a keyword 
# Store the keyword
# Scrape the html for 5 gifts
# Turn the scraper into a method
# The scrape method should return a HASH with 5 gifts
# Display the gifts hash (reuse display_list)
# Ask the user which number gift do they want to add to gift list
# Get the keys from the esty hash
# find the gift using the index
# Add the gift from etsy to the gift_list
# Tell the user that the gift was imported

