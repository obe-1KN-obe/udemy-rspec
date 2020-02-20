class BasicString
    attr_reader :sentence

    def initialize(sentence)
        @sentence = sentence
    end

    def contains_word?(test_word)
        @sentence.include? test_word
    end

    def contains_word_ignorecase?(test_word)
        @sentence.downcase.include? test_word.downcase
    end

    def is_of_length?()
        @sentence.length
    end

    def string_is_empty?()
        @sentence.empty?
    end

    def change_character(target)
        
        @sentence.each_char{|n| ( #put a block of code when iterating over the characters of a string
            unless n == target
                puts n
            else 
                puts "RUBY"
            end
        )}
    end
end