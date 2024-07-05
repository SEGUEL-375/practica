nombres = []
profesiones = []
lista_dni = []

def menu_principal
  puts "---- Menú Principal ----"
  puts  "1) Agregar Nombre"
  puts  "2) Agregar D.N.I"
  puts  "3) Agregar profesion"
  puts  "4) Eliminar Nombre"
  puts  "5) Eliminar Profesion"
  puts  "6) Editar Nombre"
  puts  "7) Editar Profesion"
  puts  "8) Lista de Nombres"
  puts  "9) Lista de Profesiones"
  puts "10) Lista de D.N.I"
  puts "11) Salir"
  puts "------------------------"
  print "Selecciona una opción: "

end

def agregar_nombre(nombres)
  print "Ingresa el nombre a agregar: "
  nombre = gets.chomp
  nombres << nombre
  puts "#{nombre} ha sido agregado."
end

def agregar_profesion(profesiones)
  print "Ingrese su profesion: "
  profesion = gets.chomp
  profesiones << profesion
  puts "Su profesion de #{profesion} ha sigo agregado."
end

def agregar_Dni(lista_dni)
  print "Ingrese su D.N.I: "
  dni = gets.chomp
  lista_dni << dni
  puts "Su D.N.I de #{dni} ha sido agregado con exito."
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

def eliminar_profesion(profesiones)
  print "Ingrese la profesion a eliminar:"
  profesion = gets.chomp
  if profesiones.delete(profesion)
    puts "#{profesion} ha sido eliminado con exito"
  
  else
    puts "#{profesion} no se encuentra en la lista."
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

def editar_profesion(profesiones)
  print "Ingrese el nombre de la profesion a editar:"
  profesion = gets.chomp
  if profesion.include?(profesion)
    print "Ingrese el nuevo nombre de la profesion:"
    nueva_profesion = gets.chomp
    profesiones[profesiones.index(profesion)] = nueva_profesion
    puts "#{profesion} ha sido cambiada a #{nueva_profesion}"
  else
    puts "#{profesion} no se encuentra en la lista."
  end
end


def lista_profesional(profesiones)
  if profesiones.empty?
    puts "La lista esta vacia."
  else 
    puts "Lista de profesiones:"  
    profesiones.each_with_index do |profesion, index|
     puts "#{index + 1}. #{profesion}"
    end   
  end
end


 def listado_dni(lista_dni)
  if lista_dni.empty?
    puts "La lista esta vacia"
  else 
    puts "Lista de D.N.I:"
    lista_dni.each_with_index do |dni,index|
      puts "#{index +1}. #{dni}"
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
    agregar_Dni(lista_dni)
  when 3
    agregar_profesion(profesiones)
  when 4
    eliminar_nombre(nombres)
  when 5
    eliminar_profesion(profesiones)
  when 6
    editar_nombre(nombres)
  when 7
    editar_profesion(profesiones)
  when 8
    listado(nombres)
  when 9
    lista_profesional(profesiones)
  when 10
    listado_dni(lista_dni)
  when 11
  
    puts "Saliendo..."
    break
  else
    puts "Opción no válida. Inténtalo de nuevo."
  end
  puts "\n"
end
