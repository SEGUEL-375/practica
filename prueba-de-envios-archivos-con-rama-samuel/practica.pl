#!/usr/bin/perl
use strict;
use warnings;
use utf8;



binmode(STDIN, ':encoding(UTF-8)');
binmode(STDOUT, ':encoding(UTF-8)');

sub ejecutar_opcion {
    print "Ingrese su opción: ";
    my $opcion = <STDIN>;
    
    if(defined $opcion) {
        chomp($opcion);
    }
    
   else {
        print "No se recibió ninguna entrada. Por favor, ingrese una opción válida.\n";
        return;
    }

    if (defined $opcion && $opcion eq '1') {
        print "Ha seleccionado la Opción 1.\n";
        # Aquí puedes agregar la lógica para la Opción 1
    } elsif (defined $opcion && $opcion eq '2') {
        print "Ha seleccionado la Opción 2.\n";
        # Aquí puedes agregar la lógica para la Opción 2
    } elsif (defined $opcion && $opcion eq '3') {
        print "Saliendo del programa. ¡Hasta luego!\n";
        exit;
    } else {
        print "Opción no válida. Por favor, ingrese una opción válida.\n";
    }
}

# Llamada a la función
ejecutar_opcion();
