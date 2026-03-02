import Foundation

func runPlayground() {

    // =========================================
    // LECCIÓN 1: VARIABLES Y TIPOS DE DATOS ✅
    // =========================================

    let nombre = "Nicolas"
    let edad = 25
    let ciudad = "Antofagasta"

    print("Me llamo \(nombre), tengo \(edad) años y vivo en \(ciudad)")


    // =========================================
    // LECCIÓN 2: CONDICIONALES ✅
    // =========================================

    let temperatura = 40

    if temperatura >= 30 {
        print("Hace mucho calor")
    } else if temperatura >= 15 {
        print("Clima agradable")
    } else {
        print("Hace frío")
    }


    // =========================================
    // LECCIÓN 3: LOOPS ✅
    // =========================================

    for i in 1...10 {
        print(i)
    }

    for numero in 2...20 {
        if numero % 2 == 0 {
            print(numero)
        }
    }


    // =========================================
    // LECCIÓN 4: FUNCIONES ✅
    // =========================================

    saludar(nombre: "Nicolas", edad: 25)
    print(esPar(numero: 7))


    // =========================================
    // LECCIÓN 5: ARRAYS Y DICCIONARIOS ✅
    // =========================================

    let notas: [Int] = [6, 4, 1, 6, 7]
    print(notas[0])
    print(notas[4])
    print(notas.count)

    let contacto: [String: String] = [
        "nombre": "Nicolas",
        "telefono": "+56975489571",
        "ciudad": "Antofagasta",
    ]
    print(contacto["nombre"] ?? "sin valor")
    print(contacto["telefono"] ?? "sin valor")
    print(contacto["ciudad"] ?? "sin valor")


    // =========================================
    // LECCIÓN 6: OPTIONALS ✅
    // =========================================

    var apellido: String? = nil
    if let a = apellido {
        print(a)
    } else {
        print("Sin apellido")
    }

    var edadOpcional: Int? = 25
    print(edadOpcional ?? 0)

}


// =========================================
// LECCIÓN 4: FUNCIONES ✅
// =========================================

func esPar(numero: Int) -> Bool {
    if numero % 2 == 0 {
        return true
    } else {
        return false
    }
}

func saludar(nombre: String, edad: Int) {
    print("Hola \(nombre), tienes \(edad) años")
}


// =========================================
// LECCIÓN 7: STRUCTS Y CLASSES ← ESCRIBE AQUÍ
// =========================================
//
// Struct — tipo por valor (Value Type)
// Cuando copias un struct, se crea una copia independiente
//
//   struct Persona {
//       var nombre: String
//       var edad: Int
//   }
//
//   var p1 = Persona(nombre: "Nicolas", edad: 25)
//   print(p1.nombre)  // "Nicolas"
//
// Class — tipo por referencia (Reference Type)
// Cuando copias una class, ambas variables apuntan al mismo objeto
//
//   class Vehiculo {
//       var marca: String
//       var velocidad: Int
//
//       init(marca: String, velocidad: Int) {
//           self.marca = marca
//           self.velocidad = velocidad
//       }
//   }
//
// EJERCICIO 1:
//   Crea un struct llamado "Persona" con propiedades:
//   nombre: String, edad: Int, ciudad: String
//   Luego crea una instancia con tus datos e imprime cada propiedad
//
// EJERCICIO 2:
//   Crea una class llamada "Vehiculo" con propiedades:
//   marca: String, velocidad: Int
//   Agrega un init y crea una instancia
//
// Escribe tu código debajo:
