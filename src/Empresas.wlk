import Universidades.*
import Profesionales.*
import solicitantes.*

class Empresa {
	
	var profesionales = #{}
	var property honorarioDeReferencia = 0
	
	method agregarProfesional(unProfesional) {
		profesionales.add(unProfesional)
	}
	
	method cuantosEstudiaronEn(unaUniversidad) {
		return profesionales.count( { 
			p=>p.universidad()==unaUniversidad
		})
	}
	
	method profesionalesMasCaros() {
		return profesionales.filter { 
			p=> p.honorariosPorHora() > honorarioDeReferencia
		}
	}
	
	method universidadesFormadoras() {
		return profesionales.map ({
			p=> p.universidad()
		}).asSet()
	}
	
	method profesionaMasBarato() {
		return profesionales.min { 
			p => p.honorariosPorHora()
		}
	}
	
	method esDeGenteAcotada() {
		return profesionales.all ( {
			p=> p.cantidadProvinciasPuedeTrabajar() <= 3
		})
	}
	
	method esDeGenteAcotadaV2() {
		return not profesionales.any ( {
			p=> p.cantidadProvinciasPuedeTrabajar() > 3
		})
	}
	
	
	method puedeSatisfacer(unSolicitante){
		return profesionales.any( { p=> unSolicitante.puedeSerAtendidoPor(p) })
	}
	
}
