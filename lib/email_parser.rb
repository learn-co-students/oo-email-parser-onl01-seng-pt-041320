# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails) #Initialized emails Variable
        @emails = emails
    end

    #parse emails from string to an array
    #remove duplicate and whitespace array value
    def parse
        emails.split(/[,\s]/).uniq.delete_if {|e| e == ""}
    end
end