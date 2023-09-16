import golosinas.*

object mariano {
	
	const golosinasCompradas = []
	
	method comprar(unaGolosina) {golosinasCompradas.add(unaGolosina)}
	method desechar(unaGolosina) {golosinasCompradas.remove(unaGolosina)}
	method cantidadDeGolosinas() = golosinasCompradas.size()
	method tieneLaGolosina(unaGolosina) = golosinasCompradas.contains(unaGolosina)
	method probarGolosina() {golosinasCompradas.forEach({golosina => golosina.darMordisco()})}
	method hayGolosinaSinTACC() {golosinasCompradas.any({golosina => golosina.libreDeGluten()})}
	method preciosCuidados() {golosinasCompradas.all({golosina => golosina.precio() <= 10})}
	method golosinaDeSabor(unSabor) {golosinasCompradas.find({golosina => golosina.gusto() == unSabor})}
	method golosinasDeSabor(unSabor){golosinasCompradas.filter({golosina=> golosina.gusto()==unSabor})}
	method sabores() {return golosinasCompradas.map({golosina => golosina.gusto()}).asSet()}
	method golosinaMasCara() {golosinasCompradas.max({golosina => golosina.precio()})}
	method pesoGolosinas() {golosinasCompradas.sum({golosina => golosina.peso()})}
	method golosinasFaltantes(golosinasDeseadas) {golosinasDeseadas.filter({golosina => !self.tieneLaGolosina(golosina)})}
	method gustosFaltantes(gustosDeseados) {gustosDeseados.filter({gusto => !self.sabores().contains(gusto)})}
}
