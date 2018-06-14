require_relative 'services/greeter.rb'
require_relative 'services/hello.rb'

english_hello = Services::Hello.new(:en)

greeter = Services::Greeter.new(english_hello)

puts greeter.greet_using_di
puts greeter.greet_using_static(:de)
puts greeter.greet_using_factory
puts greeter.greet_using_constructor(:en)
