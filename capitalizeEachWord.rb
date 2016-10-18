def ask_input()
    print "Input sentence: "
    in_string = gets.strip
    capitalize(in_string)
end

def capitalize(sentence)
    seperated_sentence = sentence.split(" ")
    seperated_sentence.each do |x|
        x.capitalize!
    end
    #puts seperated_sentence
    out_string = seperated_sentence.join(" ")
    puts out_string
end

ask_input()
