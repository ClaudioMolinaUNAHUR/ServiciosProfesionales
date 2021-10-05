import Universidades.*

class ProfesionalVinculado {
	
	var property universidad
	method puedeTrabajarEn() {
		return #{universidad.provincia()}
	}
	method honorariosPorHora() {
		return universidad.honorariosPorHora()
	}
	
	method cantidadProvinciasPuedeTrabajar() {
		return self.puedeTrabajarEn().size()
	}
}

class ProfesionalAsociado {
	var property universidad
	method puedeTrabajarEn() {
		return #{"Entre Ríos","Santa Fe","Corrientes"}
	}
	method honorariosPorHora() = 3000	
	
	method cantidadProvinciasPuedeTrabajar() {
		return self.puedeTrabajarEn().size()
	}
}


class ProfesionalLibre {
	var property universidad
	var property puedeTrabajarEn = #{}
	var property honorariosPorHora = 0
	
	method cantidadProvinciasPuedeTrabajar() {
		return self.puedeTrabajarEn().size()
	}
}

