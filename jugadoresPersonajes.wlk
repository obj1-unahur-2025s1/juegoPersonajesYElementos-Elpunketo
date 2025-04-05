import armas.*
import elementos.*
object luisa {
    var personajeActivo = null
    method personajeActivo(unPersonaje) {personajeActivo = unPersonaje}
    method personajeActivo() {return personajeActivo}
}

object floki {
    var arma = ballesta
    method encontrar(elemento){
        if(arma.estaCargada()){
            elemento.recibirAtaque(arma)
            arma.usar()
        }
        else{
            return("El arma no esta cargada")
        }

    }
}

object mario {
    var valorRecolectado = 0
    method valorRecolectado(unValor) {valorRecolectado = unValor}
    method valorRecolectado() {return valorRecolectado}
    method encontrar(elemento){
        valorRecolectado = self.valorRecolectado() + elemento.otorgarValor()
        elemento.recibirTrabajo()
    }

}