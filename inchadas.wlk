import main.*

object inchadaEntusiasta{

     method motivacion(equipo) = equipo.popularidad() * equipo.popularidad()

        //En un equipo con hinchada entusiasta, equivale al cuadrado de la popularidad del equipo.
        
     
}

object inchadaPechoFrio{
    //En un equipo con hinchada "pecho frío", es la décima parte de su popularidad, pero nunca puede ser menor a 1
    method motivacion(equipo) = (equipo.popularidad() / 10).max(1)
    //method masPublico() = entusiasta


}


object inchadaMercenaria {

    method motivacion(equipo) = (equipo.valorPlantel()/(1/100))

  
}