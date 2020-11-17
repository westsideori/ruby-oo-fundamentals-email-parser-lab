require "pry"
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end
    def parse
        emails_array = emails.split
        collect_emails_array = []
        emails_array.map do |email|
            collect_emails_array << email.split(',')
        end
        final_emails_array = collect_emails_array.flatten
        final_emails_array.uniq
    end
end

