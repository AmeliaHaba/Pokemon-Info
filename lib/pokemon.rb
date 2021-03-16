class Pokemon 

    attr_accessor :name, :form, :id, :base_attack, :base_defense, :base_stamina 

    @@all = []

        def initialize(results_array)
            @name = name
            @form = form
            @id = id 
            @base_attack = base_attack
            @base_defense = base_defense
            @base_stamina = base_stamina
            @@all << self
        end
    
        def self.all
            @@all
        end 



end 