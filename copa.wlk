import main.*



class Partido {

     const equipo1
     const equipo2

     method cuantosPuntosHizo(equipo) {
         const otro = self.adversario(equipo)
        
         if (equipo.potencial() > otro.potencial()) {
             return 3
        }else if (equipo.potencial() == otro.potencial()) {
             return 1
        }else {
             return 0
        }
    }

     method adversario(x) {
        if (x == equipo1) {
            return equipo2
        } else 
            return equipo1
        
    }

     method jugo(equipo) = equipo == equipo1 or equipo == equipo2


}

class GrupoA{
   
     const listaPartidosA = []

     method crearPartido(e1, e2) {
         const x = new Partido(equipo1= e1, equipo2= e2)
         listaPartidosA.add(x)
     }

     method puntostotales(equipox) = listaPartidosA.filter({j=>j.jugo(equipox)}).sum({k=>k.cuantosPuntosHizo(equipox)})

    


  
}