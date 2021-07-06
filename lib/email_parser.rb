# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  def initialize(emails)
    @email = emails
  end
  
  def parse
    email_array = @email.split(/[ |,]/).uniq
    email_array.reject{ |element| element.empty?} 
  end
end