object luke{

    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes()= cantidadViajes

    method recuerdo() = recuerdo

    method vehiculo(nuevo){
        vehiculo= nuevo
    } 

    method viajarA(lugar){
        if (lugar.puedeLlegar(vehiculo)){
            cantidadViajes= cantidadViajes + 1
            recuerdo= lugar.recuerdoTipico()
            vehiculo.consumoCombustible()
        }
    }

}

//ciudades

object paris {
    method recuerdoTipico()= "Llavero de la Torre Eiffel"
    method puedeLlegar(vehiculo) = vehiculo.tieneCombustible()

}

object buenosAires{    
    method recuerdoTipico() = "Mate"
    method puedeLlegar(vehiculo) = vehiculo.esRapido()

}

object bagdad {
    var recuerdo = "Bidón con petróleo Crudo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevoRecuerdo) {
        recuerdo= nuevoRecuerdo
    }
    method puedeLlegar(vehiculo)= true 
}

object lasVegas{
    var homenaje= paris
    method homenaje(lugar){
        homenaje= lugar
    }
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo)= homenaje.puedeLlegar(vehiculo)

}

object londres {
    method recuerdoTipico()= "caja de Té"
    method puedeLlegar(vehiculo)= vehiculo.esRapido() and vehiculo.tieneCombustible()

}

//vehículos

object alambiqueVeloz{
    var combustible = 300
    method esRapido()= true
    method combustible()= combustible
    method consumoCombustible()= 5
    method tieneCombustible(){
        combustible >= (self.consumoCombustible())
    }
    method consumirCombustible(){
        combustible= combustible - (self.consumoCombustible())
    }
}

object superChatarraEspecial {
    method esRapido()= false
    var cantMuniciones= 80
    var cantCañones= 30
    var combustible = cantMuniciones + cantCañones
    method cantMuniciones(nueva){
        cantMuniciones = nueva
    }
    method cantCañones(nueva) {
        cantCañones = nueva
    }    
    method tieneCombustible(){
        cantMuniciones.between(25, 60) and cantCañones.between(15, 20)
    }
    method consumoCombustible(){
        combustible= combustible - (cantMuniciones-5)
    }
}

object antiguallaBlindada {
    method esRapido()= gangster > 50
    var gangster= 60
    method consumoCombustible(){
        gangster= gangster -5
    }
    method tieneCombustible(){
        gangster >= 20
    }

}

object superConvertible {
    var vehiculoConvertido = alambiqueVeloz
    method convertir (nuevoVehiculo){
        vehiculoConvertido= nuevoVehiculo
    } 
    method esRapido()= vehiculoConvertido.esRapido()
    method tieneCombustible() = vehiculoConvertido.tieneCombustible()
    method consumoCombustible() = vehiculoConvertido.consumoCombustible()

}