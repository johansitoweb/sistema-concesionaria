class Cliente  
    attr_accessor :id, :nombre, :telefono  
  
    def initialize(id, nombre, telefono)  
      @id = id  
      @nombre = nombre  
      @telefono = telefono  
    end  
  end