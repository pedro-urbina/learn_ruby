#write your code here

def echo input
    return input
end

def shout string
    return string.upcase
end

def repeat input, n = 2
    return ((input + " ") * n).chop
end

def start_of_word word, n_letters
    return word[0..n_letters - 1]
end

def first_word string
    return string.split(" ")[0]
end

def titleize words
    array = words.split(" ")

    little_words = ["and", "over", "the"]

    first = true

    array.map! do |word| 
        if first
            first = false
            word.capitalize
        elsif (not(little_words.any? {|element| element == word}))
            word.capitalize            
        else
            word
        end
    end

    return array.join(" ")
end