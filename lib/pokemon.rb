class Pokemon # object class- anything having to do with object 

    attr_accessor :name, :id, :base_attack, :base_defense, :base_stamina 

    @@all = []

        def initialize(pokemon)
            @name = pokemon[:pokemon_name]
            @id = pokemon[:pokemon_id]
            @base_attack = pokemon[:base_attack]
            @base_defense = pokemon[:base_defense]
            @base_stamina = pokemon[:base_stamina]
            @@all << self
        end
    
        def self.all 
            @@all
        end 

        def self.display_pokemon_names
            array = self.all
            array[0...20].each.with_index(1) do |pokemon, i| # brackets for index number or keys
                puts "#{i}. #{pokemon.name}"
            end

        end

        def self.display_pokemon_stats(index)
            pokemon = self.all[index]
            puts
            puts "Check out the stats on #{pokemon.name}!"
            puts "Base Attack: #{pokemon.base_attack}"
            puts "Base Defense: #{pokemon.base_defense}"
            puts "Base Stamina: #{pokemon.base_stamina}"  
        end 

end 