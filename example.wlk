object paqueteDeGeorge {
     var estaPago = false

	 method pagar () {
		estaPago = true
	 }

	 method estaPaquetePago () {
		return estaPago
	 }

	 method puedeSerPaqueteEnviado (lugar, mensajero) {
		return estaPago && lugar.puedePasar(mensajero)
	 }
}

object puenteDeBrooklyn {
	method puedePasar(mensajero) {
		return mensajero.peso() <= 1000
	}
}

object matrix {
    method puedePasar(mensajero) {
		return mensajero.puedeLlamar()
	}
}

object chuckNorris {
	 const peso = 900

     method peso() {
        return peso    
	}

	method puedeLlamar () {
        return true
	}
}

object neo {
    const peso = 0

	var credito = 100

     method peso() {
        return peso    
	}

	method puedeLlamar() {
        return credito > 0
	}

	method aumentarCredito (cantidad) {
		credito += cantidad
	}

	method disminuirCredito (cantidad) {
		credito -= cantidad
	}

}

object lincolnHawk {
	var peso = 80 

	var vehiculoActual = bici

	method cambioDePesoYVehiculo (_vehiculo) {
         peso = peso - vehiculoActual.pesoQueTiene()
		 vehiculoActual = _vehiculo
		 peso = peso + vehiculoActual.pesoQueTiene()
	}

	method peso () {
        return peso
	}

	method puedeLlamar() {
        return false
	}
}

object bici {
     method pesoQueTiene () {
		return 10
	 }
}

object camion {
	var acoplados = 0

	const pesoDelCamion = 500

	var pesoTotal = pesoDelCamion

	method agregarAcoplado () {
		acoplados += 1
		pesoTotal += acoplado.pesoQueTiene()
	}

	method quitarAcoplado () {
		if (acoplados > 0) {
			acoplados -= 1
			pesoTotal -= acoplado.pesoQueTiene()
		} else {
			acoplados += 0
			pesoTotal += 0
		}
	}
 
    method cantidadDeAcoplados () {
		return acoplados
	}

	method pesoQueTiene () {
		return pesoTotal
	 }
}

object acoplado {
	method pesoQueTiene () {
		return 500
	}
}