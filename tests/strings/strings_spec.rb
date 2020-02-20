require_relative "strings"

RSpec.describe BasicString do
    before do
        @test_string = "There is a gemstone called ruby in excistence"
    end
    
    context "case-sensitive" do 
        it "should output interpolated string" do
            test_word = "Ruby"
            text = BasicString.new(@test_string)
            result = text.contains_word? test_word

            expect(result).to be_falsy
        end
    end

    context "case insensitive" do
        it "should output interpolated string" do
            test_word = "Ruby"
            text = BasicString.new(@test_string)
            result = text.contains_word_ignorecase? test_word

            expect(result).to be_truthy
        end
    end

    context "has length" do
        it "should have integer length" do
            new_string = "my new string"
            text = BasicString.new(new_string)
            result = text.is_of_length? 

            expect(result).not_to eql(0)
        end

        it "should be an empty string" do 
            text = BasicString.new("")
            result = text.string_is_empty?

            expect(result).to be_truthy
        end
        
        it "should evaluate string with one space as not empty" do
            text = BasicString.new("    ") # https://www.rubyguides.com/2018/01/ruby-string-methods/ - says that a string composed ONLY of whitespace is also evaluated as empty, but the test shows it's not
            result = text.string_is_empty?
            length = text.is_of_length?
            puts length

            expect(result).to be_falsy
        end
    end

    context "additional string methods" do

        before do
            @my_string = "Ruby is very clear language"
        end

        it "should show a substring" do
            result = @my_string[0, 4] #param1 - is an index of the start of the substring, param2 - substring length

            expect(result).to eql("Ruby")

            result = @my_string[8..-10] #8 is index of the substring start and -10 is index of the end counting from the end of the string

            expect(result).to eql("very clear")
        end

        it "should evaluate the start of the string" do
            result = @my_string.start_with?("Ruby")

            expect(result).to be_truthy
        end

        it "should evaluate the end of the string" do
            result = @my_string.end_with?("clear language")

            expect(result).to be_truthy
        end

        it "should add a substring to a string" do
            result = @my_string.rjust(@my_string.size + 4, "Now ") #param1 is a length of a new string after addition of the substring

            expect(result).to eql("Now Ruby is very clear language")

            result = @my_string.ljust(@my_string.size + 9, " only now")

            expect(result).to eql("Ruby is very clear language only now") 
        end

        it "should remove beginning and end of a string" do
            result = @my_string.delete_prefix("Ruby ")
            expect(result).to eql("is very clear language")

            result = @my_string.delete_suffix(" language")
            expect(result).to eql("Ruby is very clear")
        end

        it "should convert a string to an array of characters" do
            result = @my_string.split(/\s(?=clear)/) #splits string before word "clear", param is a regexp
            puts result

            expect(result[1]).to eql("clear language")
            expect(result[0]).to eql("Ruby is very")
        end

        it "should convert an array into string with underscore separator" do
            arr = ["I", "will", "not", "give", "up"]
            puts arr.join("_")
            expect(arr.join("_")).to eql("I_will_not_give_up")
        end

        it "should convert a string to an integer" do
            result = "876,99".to_i #integer cannot have comma
            expect(result).to eql(876)

            result = @my_string.to_i
            expect(result).to eql(0)
        end

        it "should concantenate strings" do
            @my_string << " " << "for me" #concantenation thus rewrites the initial value of @my_string
            expect(@my_string).to eql("Ruby is very clear language for me")
        end

        it "should iterate over characters of a string" do
            text = BasicString.new @my_string
            puts text.change_character("l")
        end

        it "should replace a word in a string" do 
            result = @my_string.gsub("clear", "difficult") #gsub creates a new string, original @my_string value is not changed

            expect(result).to eql("Ruby is very difficult language")
            expect(@my_string).to eql("Ruby is very clear language")
        end
        
        it "should change the original string" do
            @my_string.gsub!("clear", "funny")

            expect(@my_string).to eql("Ruby is very funny language")
        end

        it "should count specific characters in a string" do
            expect(@my_string.downcase.count("r")).to eql(3)
        end
    end
end
