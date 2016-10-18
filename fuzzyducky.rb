#Fuzzy Ducky Helper App

def ask_input()
    print("Welcome to Fuzzy Ducky! Please input your first number (fuzzy) now!\n")
    first_num = gets.to_i
    print("Great! Now, please give me the second number!\n")
    second_num = gets.to_i
    print("Fantastic! Let's begin!\n")
    fuzzy_ducky(first_num, second_num)
end

def fuzzy_ducky(first_num, second_num)
    counter = 0
    counting = true
    print("To continue to the next number, press Enter. Otherwise, type 'quit' to exit the program.\n")
    while counting == true

        if counter%first_num == 0 && counter%second_num == 0
            print("Fuzzy Ducky")
        elsif counter%first_num == 0
            print("Fuzzy")
        elsif counter%second_num == 0
            print("Ducky")
        else
            print(counter)
        end

        input = gets

        if input == 'quit' || input == 'Quit'
            counting = false
        else
            counter += 1
        end
    end
end

ask_input
