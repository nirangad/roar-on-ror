# frozen_string_literal: true

users = {
  "user_1": 'abcd12341',
  "user_2": 'abcd12342',
  "user_3": 'abcd12343',
  "user_4": 'abcd12344'
}

puts 'Welcome to the Authenticator'
puts '-' * 30

puts "This program will take username and password to compare\n\n"

stop = false

until stop
  puts 'Enter Username: '
  name = gets.chomp

  puts 'Enter Password: '
  pass = gets.chomp

  if users[name.to_s.to_sym] == pass
    user = {
      username: name,
      password: users[name.to_s.to_sym]
    }
    puts user
  else
    puts 'Invalid credentials'
  end

  puts 'Press n to quit or any other key to continue: '
  choice = gets.chomp
  stop = choice == 'n'
end
