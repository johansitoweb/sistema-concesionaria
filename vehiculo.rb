class Vehiculo  
    attr_accessor :id, :marca, :modelo, :año, :precio  
  
    def initialize(id, marca, modelo, año, precio)  
      @id = id  
      @marca = marca  
      @modelo = modelo  
      @año = año  
      @precio = precio  
    end  
  end