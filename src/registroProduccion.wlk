object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		 produccionPorDia = nuevaLista
	}
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.contains(cantidad)
	}	
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({ pd => pd.even()})
	}
	method produccionEsAcotada(n1,n2){
		return produccionPorDia.all ({pd => pd.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter ({pd => pd > cuanto})
	}
	method produccionesSumando(n){
		return produccionPorDia.map ({pd => pd + n})
	}
	method totalProducido(){
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return produccionPorDia.count ({pd => pd > produccionPorDia.first() })
	}
	
}
