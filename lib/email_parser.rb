# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
 require 'pry' 
  attr_accessor :email 
  
  def  initialize(emails)
    @email = emails
  end

  def parse
    csv_email = @email.scan(/\w+@\w+.com/)
    csv_email.uniq
#    binding.pry
  end

end 





#.split(/\/)

#   email_array = @email.split(/ , | /).uniq
#    email_array.reject! {|element| element.empty?}
 #   email_array