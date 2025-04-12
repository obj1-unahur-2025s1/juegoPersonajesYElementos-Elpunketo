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
            null
        }

    }
}

object mario {
    var valorRecolectado = 0
    method valorRecolectado(unValor) {valorRecolectado = unValor}
    method valorRecolectado() {return valorRecolectado}
    method encontrar(elemento){
        valorRecolectado = valorRecolectado + elemento.valorAOtorgar()
        elemento.recibirTrabajo()
    }

}