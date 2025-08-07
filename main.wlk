import inchadas.*
import jugadores.*




class Equipo{
   var property puntosMundial = 0
   
   const listajugadores = []

   method agregarjugador(player) = listajugadores.add(player)

   
   method valorplantel() = listajugadores.filter{j=>j.cotizacion()>1}.sum{j=>j.cotizacion()}

   //method jugMasCotizado() = listajugadores.map({j=>j.cotizacion()}).max()
   method masCotizado() = listajugadores.max{j => j.cotizacion()}

   method guerraChina() = listajugadores.remove(self.masCotizado())

   method jugadoresDisponibles() {return listajugadores}



  




  
}


class EqEuropeo inherits Equipo{
   var property cantChampions = 0

 //Para los equipos europeos es la valoración del plantel multiplicado por la cantidad de champions conseguidas
   method potencial() = self.valorplantel() * cantChampions


}


class EqConmebol inherits Equipo{
   var property inchada
   var property popularidad

    //Para los equipos de la Conmebol, equivale a la valoración del plantel multiplicado por el nivel de motivación del equipo. La popularidad es un valor numérico que ya se conoce para cualquier equipo de la conmebol. Esta motivación depende, entre otras cosas, del estilo de su hinchada:
    //En un equipo con hinchada entusiasta, equivale al cuadrado de la popularidad del equipo.
    //En un equipo con hinchada "pecho frío", es la décima parte de su popularidad, pero nunca puede ser menor a 1.
    //En un  equipo con hinchada mercenaria, es el 1% de la valoración de su plantel.
   method potencial() = self.valorplantel()*inchada.motivacion(self)


}


class EqEEUU inherits Equipo{
  var property habCiudad 

  
  method potencial() = self.valorplantel() * habCiudad


}

class EqRest inherits Equipo{
   method potencia() = self.valorplantel()

}

