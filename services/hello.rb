module Services
  class Hello
    HELLOS = {
      en: 'Hello',
      de: 'Guten Tag',
      fr: 'Bonjour'
    }

    def initialize(language)
      @language = language
    end

    def self.create_in_french
      new(:fr)
    end

    def self.say_hello_static(language)
      HELLOS[language]
    end

    def say_hello
      HELLOS[@language]
    end
  end
end
