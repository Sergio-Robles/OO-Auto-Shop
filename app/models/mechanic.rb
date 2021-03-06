class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all
    @@all
  end

  def cars 
    Car.all.select { |mech| mech.mechanic == self }
  end

  def car_owners 
    cars.map do |car| 
      car.car_owner 
    end
  end
  
  def list_of_names_of_car_owners_who_have_same_mechanic
    car_owners.map { |car| puts car.name }
      #binding.pry    
  end

end
