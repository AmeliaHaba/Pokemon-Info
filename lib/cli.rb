class Cli # how it's going to work # functionality of program

    def welcome_pokemon 
        puts
        puts    "You must really love Pokemon to look this information up!"
        puts    "Since you're clearly bored, here is a list of cool Pokemon."
        puts 
        
    end 

    def awesome_pokemon_title
        puts
        puts
        puts "     ,                           .::."
        puts "                               .;:**'            "
        puts "                               `                  0"
        puts "   .:XHHHHk.              db.   .;;.     dH  MX   0"
        puts " oMMMMMMMMMMM       ~MM  dMMP :MMMMMR   MMM  MR      ~MRMN"
        puts " QMMMMMb   MMX       MMMMMMP !MX' :M~   MMM MMM  .oo. XMMM 'MMM"
        puts "   `MMMM.  )M> :X!Hk. MMMM   XMM.o'' .  MMMMMMM X?XMMM MMM>!MMP"
        puts "   'MMMb.dM! XM M'?M MMMMMX.`'MMMMMMMM~ MM MMM XM `" "MX MMXXMM"
        puts "     ~MMMMM~ XMM. .XM XM` MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP"
        puts "      ?MMM   YMMMMMM! MM   `?MMRb    `""""    'LMMMMM XM IMM"
        puts "       MMMX    MMMM!  MM       ~%:           !Mh.  MdMI IMMP"
        puts "        MMM.                                             IMX"
        puts "       ~M!M                                             IMP"
        puts
        puts
    end

    def run_pokemon # this is my flow
        awesome_pokemon_title
        welcome_pokemon 
        Pokemon.display_pokemon_names
        index = -1
        while index < 0 || index > 19
            index = select_number
        end
        Pokemon.display_pokemon_stats(index)
        continue_or_exit
    end

    def select_number
        puts 
        puts "Please type in a number from the list of Pokemon to learn some fun facts."
        input = gets.chomp
        index = input.to_i - 1
       
    end

    def continue_or_exit
        puts
        puts "If you would like to learn about another Pokemon choose a number 1-20 or type exit to leave the program."
        input = gets.chomp 
        if input == "exit"
            puts "See ya! Hope you catch em all!"
        elsif input.to_i <= 20 && input.to_i >= 1 
            Pokemon.display_pokemon_stats(input.to_i - 1)
            continue_or_exit
        else
            continue_or_exit
        end

    end 

    
end


