// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method esAderezo() { return false }
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }
	method esAderezo() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method esAderezo() { return false }
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	method esAderezo() { return false }
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method esAderezo() { return false }
}

object kiloDeMilanesasRebozadas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method esAderezo() { return false }	
}

object salsaDeTomates {
	method precio() { return 900 }
	method esAderezo() { return true }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000  }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method esAderezo() { return false }
}

object kiloDeCebollas {
	method precio() { return 250 }
	method esComida() { return false }
	method esAderezo() { return true }
	method esElectrodomestico() { return false }	
}


object compu {
	method precio() { return 500*dolar.precioDeVenta()}
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	method esAderezo() { return false }
}

object dolar{
	method esComida() { return false }
	method esElectrodomestico() { return false }
	method precioDeVenta()=720
	method esAderezo() { return false }
}

object packDeComida {
	var property plato
	var property aderezo
	method precios() = plato.precio()+aderezo.precio() 
	method platoDeComida(comida){
		if(comida.esComida()&& !comida.esAderezo()){
			plato=comida
		}
		else
		self.error("Ingrese una comida")
	}
	method aderezo(add){
		if(add.esAderezo()){
			aderezo=add
		}
		else
		self.error("Ingrese un aderezo") 
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

















