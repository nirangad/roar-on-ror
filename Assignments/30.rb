# frozen_string_literal: true

# users = {
#   "user_1": 'abcd12341',
#   "user_2": 'abcd12342',
#   "user_3": 'abcd12343',
#   "user_4": 'abcd12344'
# }

users = [
  { username: 'user_1', password: 'abcd12341' },
  { username: 'user_2', password: 'abcd12342' },
  { username: 'user_3', password: 'abcd12343' },
  { username: 'user_4', password: 'abcd12344' }
]

puts 'Welcome to the Authenticator'
puts '-' * 30

puts "This program will take username and password to compare\n\n"

stop = false

until stop
  puts 'Enter Username: '
  name = gets.chomp

  puts 'Enter Password: '
  pass = gets.chomp

  user = users.find { |u| u[:username] == name && u[:password] == pass }

  if !user.nil?
    u = {
      username: name,
      password: pass
    }
    puts u
  else
    puts 'Invalid credentials'
  end

  puts 'Press n to quit or any other key to continue: '
  choice = gets.chomp
  stop = choice == 'n'
end
