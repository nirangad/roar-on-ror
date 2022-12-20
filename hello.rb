# frozen_string_literal: true

def say_hello
  puts 'Hello'
end

def say_hello_to(name)
  puts "Hello #{name}"
end

puts "Enter your name:"
name = gets.chomp
say_hello_to name