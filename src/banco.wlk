import casa.*
import cosas.*
object cuentaCorriente {
	var property saldo=0
	method depositar(importe){
		saldo+=importe
	}
	method extraer(importe){
		if(saldo<importe){
			self.error("No hay dinero suficiente")
		}
		saldo-=importe
	}
}

object cuentaConGastos{
	var property saldo =0
	method depositar(importe){
		saldo+=0.max(importe-200)
	}
	method extraer(importe){
		if(saldo<importe){
			self.error("No hay dinero suficiente")
		}
		else if (10000>=importe){
			saldo-=importe+200
		}
		else
		saldo -= importe + (importe * 2 / 100)
	}
}

object cuentaCombinada{
	var property cuentaPrimaria= cuentaCorriente
	var property cuentaSecundaria= cuentaConGastos
	method saldo() = cuentaPrimaria.saldo()+cuentaSecundaria.saldo()
	method depositar(importe){
		cuentaPrimaria.depositar(importe)
	}
	method extraer(importe){
		if (importe>cuentaPrimaria.saldo() && cuentaSecundaria.saldo()>=importe){
			cuentaSecundaria.extraer(importe)
		}
		else if (cuentaPrimaria.saldo()>=importe){
		cuentaPrimaria.extraer(importe)}
		else 
		self.error("No hay suficiente dinero para extraer")
	}
}