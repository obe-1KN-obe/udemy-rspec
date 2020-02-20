require_relative "strings"

@sentence = "Value of failure"
@word = "value"
text = BasicString.new(@sentence)

result = text.contains_word? @word
puts result