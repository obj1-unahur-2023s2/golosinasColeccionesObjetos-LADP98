object bombon {
	var peso = 15
	
	method precio() = 5
	method peso() = 0.max(peso)
	method gusto() = "frutilla"
	method libreDeGluten() = true
	
	method darMordisco() {peso = (peso * 0.8) - 1}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method peso() = 0.max(peso)
	method gusto() = "chocolate"
	method libreDeGluten() = false
	
	method darMordisco() {peso = peso * 0.8}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method peso() = 0.max(peso)
	method gusto() = "frutilla"
	method libreDeGluten() = true
	
	method darMordisco() {peso -= 1}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method peso() = 0.max(peso)
	method gusto() = "naranja"
	method libreDeGluten() = true
	
	method darMordisco() {if (peso > 2) peso *= 0.9 else peso}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method peso() = 0.max(peso)
	method gusto() = "vainilla"
	method libreDeGluten() = false
	
	method darMordisco() {if (peso > 70) peso *= 0.5 else peso *= 0.75}
}

object chocolatin {
	var pesoInicial
	var peso
	
	method precio() = pesoInicial * 0.5
	method peso() = 0.max(peso)
	method gusto() = "chocolate"
	method libreDeGluten() = false
	
	method pesoInicial(unPeso){
		pesoInicial = unPeso
		peso = unPeso}
	method darMordisco() {peso =- 2}
}

object golosinaBaniada {
	var property golosinaDeBase = caramelo //Valor por defecto
	var baniado = 4
	
	method precio() = golosinaDeBase.precio() + 2
	method peso() = golosinaDeBase.peso() + baniado
	method gusto() = golosinaDeBase.gusto()
	method libreDeGluten() = golosinaDeBase.libreDeGluten()
	
	method darMordisco(){
		golosinaDeBase.darMordisco()
		baniado = 0.max(baniado - 2)}
}

object pastillaTuttiFrutti {
	var property libreDeGluten = false //Valor por defecto
	const gustos = ["frutilla","chocolate","naranja"]
	var cantidadDeMordidas = 0 //Indice de gustos
	
	method precio() = if (libreDeGluten) 7 else 10
	method peso() = 5
	method gusto() = gustos.get(cantidadDeMordidas)

	method darMordida(){
		cantidadDeMordidas = (cantidadDeMordidas + 1) % gustos.size()
	}
}