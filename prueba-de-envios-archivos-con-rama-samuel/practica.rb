nombres = []
profresiones = []

def menu_principal
  puts "---- Menú Principal ----"
  puts "1) Agregar Nombre"
  puts "2) Agregar profesion"
  puts "3) Eliminar Nombre"
  puts "4) Editar Nombre"
  puts "5) Lista de Nombres"
  puts "6) Lista de Profesiones"
  puts "7) Salir"
  puts "------------------------"
  print "Selecciona una opción: "

end

def agregar_nombre(nombres)
  print "Ingresa el nombre a agregar: "
  nombre = gets.chomp
  nombres << nombre
  puts "#{nombre} ha sido agregado."
end

def agregar_profesion(profresiones)
  print "Ingrese su profesion: "
  profesion = gets.chomp
  profresiones << profesion
  puts " su profesion de #{profesion} ha sigo agregado."
end


def eliminar_nombre(nombres)
  print "Ingresa el nombre a eliminar: "
  nombre = gets.chomp
  if nombres.delete(nombre)
    puts "#{nombre} ha sido eliminado con exito."
  else
    puts "#{nombre} no se encuentra en la lista."
  end
end

def editar_nombre(nombres)
  print "Ingresa el nombre a editar: "
  nombre = gets.chomp
  if nombres.include?(nombre)
    print "Ingresa el nuevo nombre: "
    nuevo_nombre = gets.chomp
    nombres[nombres.index(nombre)] = nuevo_nombre
    puts "#{nombre} ha sido cambiado a #{nuevo_nombre}."
  else
    puts "#{nombre} no se encuentra en la lista."
  end
end

def lista_profesional(profresiones)
  if profresiones.empty?
    puts "La lista esta vacia."
  else 
    puts "Lista de profesiones:"  
    profresiones.each_with_index do |profesion, index|
     puts "#{index + 1}. #{profesion}"
    end   
  end

def listado(nombres)
  if nombres.empty?
    puts "La lista está vacía."
  else
    puts "Lista de nombres:"
    nombres.each_with_index do |nombre, index|
      puts "#{index + 1}. #{nombre}"
    end
  end



end
end


loop do
  menu_principal
  opcion = gets.chomp.to_i

  case opcion
  when 1
    agregar_nombre(nombres)
  
  when 2
    agregar_profesion(profresiones)
  when 3
    eliminar_nombre(nombres)
  when 4
    editar_nombre(nombres)
  when 5
    listado(nombres)
  when 6
    lista_profesional(profresiones)
  when 7
    puts "Saliendo..."
    break
  else
    puts "Opción no válida. Inténtalo de nuevo."
  end
  puts "\n"
end
