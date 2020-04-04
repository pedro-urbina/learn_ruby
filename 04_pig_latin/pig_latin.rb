#write your code here

def translate string
    words = string.split
    translated_string = ""

    words.each do |word|
        translated_string += translator(word) + " "
    end

    return translated_string.chop
end

def translator string
    vowels = ["a", "e", "i", "o", "u"]
    n_consonant = 0
    i = 0

    while true
        is_vowel = vowels.any? {|vowel| vowel == string[i]}
        if not is_vowel
            if ((string[i] == "q") and (string[i+1] == "u"))
                n_consonant += 1
                i += 1
            end
            n_consonant += 1
            i += 1
        else
            break
        end
    end

    if n_consonant == 0
        return string + "ay"
    else
        return string[n_consonant,string.length-1] + string[0,n_consonant] + "ay"
    end
end