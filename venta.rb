class Venta  
    attr_accessor :id, :vehiculo, :cliente, :fecha  
  
    def initialize(id, vehiculo, cliente, fecha)  
      @id = id  
      @vehiculo = vehiculo  
      @cliente = cliente  
      @fecha = fecha  
    end  
  end