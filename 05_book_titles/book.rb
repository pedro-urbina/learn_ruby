class Book
# write your code here
    # def initialize title=""
    #     @title = title
    # end

    def title= title=""
        @title = title
    end

    def title title=""        
        little_words = ["and", "over", "the", "in", "of", "a", "an"]        
        first = true
    
        @title_array = @title.split.map! do |word| 
            if first
                first = false
                word.capitalize
            elsif (not(little_words.any? {|element| element == word}))
                word.capitalize            
            else
                word
            end
        end
    
        @title_array.join(" ")
    end
end