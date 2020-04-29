# Build a class EmailParser that accepts a string of unformatted emails.

# The parse method on the class should separate them intounique email addresses.

# The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    puts split_email = emails.split.collect { |address| address.split(',')}
    n_emails = split_email.flatten.uniq
    n_emails
  end
  
end