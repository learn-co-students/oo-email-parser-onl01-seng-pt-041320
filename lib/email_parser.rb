# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # "john@doe.com, person@somewhere.org"
    puts splitEmail = emails.split
    # ["john@doe.com,", "person@somehwhere.org"]
    .map {|address|
      # 1. john@doe.com,
      # 2. person@somewhere.org
      address.split(',')
      # 1. ["john@doe.com", ""]
      # 2. ["person@somehwhere.org"]
    }
    # [
    #   ["john@doe.com", ""],
    #   ["person@somewhere.org"]
    # ]

    emailArr = splitEmail.flatten
    # ["john@doe.com", "", "person@somewhere.org"]

    .uniq
    # ["john@doe.com", "person@somewhere.org"]

    emailArr
  end
end
