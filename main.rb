require_relative 'vehiculo'  
require_relative 'cliente'  
require_relative 'venta'  

$vehiculos = []  
$clientes = []  
$ventas = []  

def agregar_vehiculo  
  puts "Ingrese ID del vehículo:"  
  id = gets.chomp  
  puts "Ingrese marca:"  
  marca = gets.chomp  
  puts "Ingrese modelo:"  
  modelo = gets.chomp  
  puts "Ingrese año:"  
  año = gets.chomp.to_i  
  puts "Ingrese precio:"  
  precio = gets.chomp.to_f  
  vehiculo = Vehiculo.new(id, marca, modelo, año, precio)  
  $vehiculos << vehiculo  
  puts "Vehículo agregado exitosamente."  
end  

def listar_vehiculos  
  puts "Lista de Vehículos:"  
  $vehiculos.each do |v|  
    puts "ID: #{v.id}, Marca: #{v.marca}, Modelo: #{v.modelo}, Año: #{v.año}, Precio: #{v.precio}"  
  end  
end  

def agregar_cliente  
  puts "Ingrese ID del cliente:"  
  id = gets.chomp  
  puts "Ingrese nombre:"  
  nombre = gets.chomp  
  puts "Ingrese teléfono:"  
  telefono = gets.chomp  
  cliente = Cliente.new(id, nombre, telefono)  
  $clientes << cliente  
  puts "Cliente agregado exitosamente."  
end  

def listar_clientes  
  puts "Lista de Clientes:"  
  $clientes.each do |c|  
    puts "ID: #{c.id}, Nombre: #{c.nombre}, Teléfono: #{c.telefono}"  
  end  
end  

def realizar_venta  
  puts "Ingrese ID de la venta:"  
  id = gets.chomp  
  puts "Ingrese ID del vehículo:"  
  vehiculo_id = gets.chomp  
  vehiculo = $vehiculos.find { |v| v.id == vehiculo_id }  
  puts "Ingrese ID del cliente:"  
  cliente_id = gets.chomp  
  cliente = $clientes.find { |c| c.id == cliente_id }  
  fecha = Time.now  
  if vehiculo && cliente  
    venta = Venta.new(id, vehiculo, cliente, fecha)  
    $ventas << venta  
    puts "Venta registrada exitosamente."  
  else  
    puts "Vehículo o cliente no encontrado."  
  end  
end  

def main_menu  
  loop do  
    puts "Bienvenido a la Concesionaria"  
    puts "1. Gestión de Inventario"  
    puts "2. Gestión de Clientes"  
    puts "3. Realizar Venta"  
    puts "4. Salir"  
    print "Seleccione una opción: "  

    option = gets.chomp  
    case option  
    when '1'  
      puts "Gestión de Inventario"  
      puts "1. Añadir Vehículo"  
      puts "2. Listar Vehículos"  
      print "Seleccione una opción: