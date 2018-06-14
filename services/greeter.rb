module Services
  class Greeter
    def initialize(hello_service)
      @hello_service = hello_service
    end

    def greet_using_di
      @hello_service.say_hello
    end

    def greet_using_static(language)
      Services::Hello.say_hello_static(language)
    end

    def greet_using_factory
      Services::Hello.create_in_french.say_hello
    end

    def greet_using_constructor(language)
      Services::Hello.new(language).say_hello
    end
  end
end
