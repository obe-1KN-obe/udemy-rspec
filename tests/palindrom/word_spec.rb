require_relative "word"

RSpec.describe Word do

    context "test word is a palindrome" do
        it "should read the same forwards as backwards" do 
            test_word = 'Madam'
            result = Word.palindrome? test_word
            expect(result).to be_truthy
        end
    end

    context "test word is NOT a palindrome" do
        it "shold NOT read the same forwards as backwards" do 
            test_word = 'Food'
            result = Word.palindrome? test_word
            expect(result).to be_falsy
        end
    end
end