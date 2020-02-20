require_relative 'quoted'

placeholder = 5 + 10

# %q behaves like string with single quotes, meaning it cannot interpolate and outputs 'The sum of 5 + 10 is: \#{placeholder}'
sentence = %q{The sum of 5 + 10 is: #{placeholder}}

string = QuotedString.new sentence

puts string

# %Q behaves like a string with double quotes, meaning that placeholder will be a calculated value of placeholder
sentence = %Q{The sum of 5 + 10 is: #{placeholder}}

string = QuotedString.new sentence

puts sentence