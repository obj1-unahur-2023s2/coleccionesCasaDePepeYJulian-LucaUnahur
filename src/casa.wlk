import cosas.* 
import banco.*
object casaDePepeYJulian {
	const cosas = []
	var property cuenta=cuentaCombinada
	method cambiarCuenta(cuentaElegida){cuenta=cuentaElegida}
	method gastar(importe){
		cuenta.extraer(importe)
	}
	method dineroDisponible(){
		return cuenta.saldo()
	}
	method comprar(cosa){
		if(self.dineroDisponible()>=cosa.precio())
		{
			self.gastar(cosa.precio())
			cosas.add(cosa)
		}
		else
		self.error("No hay dinero suficiente para su compra")
	}
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		return cosas.any({x => x.esComida()})
	}
	
	method vieneDeEquiparse(){
		return (cosas.last().esElectrodomestico() or cosas.last().precio()>50000)
	}
	
	method esDerrochona(){
		return cosas.sum({x=>x.precio()})>=90000 
	}
	
	method compraMasCara(){
		return cosas.max({x=>x.precio()})
	}
	
	method electrodomesticosComprados(){
		return cosas.filter({x => x.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosas.all({x=>x.esComida()})
	}
	
	method queFaltaComprar(lista){
		return lista.asSet().difference(cosas.asSet())
	}
	
	method faltaComida(){
		return cosas.filter({x=>x.esComida()}).size()<2
	}
}
