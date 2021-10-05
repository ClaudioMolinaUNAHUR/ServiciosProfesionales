import Profesionales.*

class Persona {
	var property provincia=""
	
	method puedeSerAtendidoPor(unProfesional) {
		return  unProfesional.puedeTrabajarEn().contains(provincia)
	}
	
}


class Institucion {
	
	var property universidades = #{}
	
	method puedeSerAtendidoPor(unProfesional) {
		return universidades.contains(unProfesional.universidad())
	}
}