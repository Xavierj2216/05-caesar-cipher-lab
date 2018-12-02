# def caesar_encode(string,offset)
#   # code
#   encode = "" #Initialize an empty string
#   string.each_char do |i| #Returns an array of characters in str
#       if ("a".."z").include? (i.downcase) # check if its lowercase form is in the range from "a" to "z"
#         offset.times {i = i.next} #Shift the letter a number of times according to offset
#         #Returns the next object
#     else
#         encode 
#       end
#       encode << i #character is added to 
#     end
#     return encode
# end
 
 def caesar_encode(string, offset)
    alphabet = [*('a'..'z')]
    string = string.split("")
    string.collect do |letter|
        if letter == letter.upcase && alphabet.include?(letter.downcase)
            index = (alphabet.index(letter.downcase) + offset)%26
            letter = alphabet[index].upcase
        elsif alphabet.include?(letter)
            index = (alphabet.index(letter) + offset)%26
            letter = alphabet[index]
        else 
        letter
        end
    end.join
end

def caesar_decode(string,offset)
   alphabet = [*('a'..'z')]
    string = string.split("")
    string.collect do |letter|
        if letter == letter.upcase && alphabet.include?(letter.downcase)
            index = (alphabet.index(letter.downcase) - offset)%26
            letter = alphabet[index].upcase
        elsif alphabet.include?(letter)
            index = (alphabet.index(letter) - offset)%26
            letter = alphabet[index]
        else 
        letter
        end
    end.join
end
