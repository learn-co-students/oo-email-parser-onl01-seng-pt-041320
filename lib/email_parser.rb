class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        trying = []
        email = email_addresses.split(" ")
        email.collect do |mail| 
            trying << mail.chomp(",")
        end
        trying.uniq
    end

end
