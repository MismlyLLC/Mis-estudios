import Foundation

func runPlayGround() {
    var x: Tipo? = nil
    if let x = x {
        // x existe
    } else {
        // x es nil
    }
}

struct Nombre {
    var propiedad: Tipo
}

class Nombre {
    var propiedad: Tipo
    init(propiedad: Tipo) {
        self.propiedad = propiedad
    }
}




protocol Nombre{
    func method() -> Tipo}

struct Adoptante: Nombre{
    func method() -> Tipo {
        return valor
    }
}
