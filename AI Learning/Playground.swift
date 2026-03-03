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
    
    var p2 = Persona(nombre: "Nicolas", edad: 25, ciudad: "Antofagasta")
    print(p2.nombre)
    print(p2.edad)
    print(p2.ciudad)
    
    var v1 = Vehiculo(marca: "Toyota", velocidad: 120)
    print(v1.marca)
    print(v1.velocidad)
    
    let e = Estudiante(nombre: "Nicolas", carrera: "Administración")
    print(e.saludar())
    
    
    let cuadrado = Cuadrado(lado: 5.0)
    print(cuadrado.area())
    
    let circulo = Circulo(radio: 3.0)
    print(circulo.area())

    // aquí acaba runPlayground **
}

struct Persona {
    var nombre: String
    var edad: Int
    var ciudad: String
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
// LECCIÓN 7: STRUCTS Y CLASSES ✅
// =========================================

class Vehiculo {
    var marca: String
    var velocidad: Int

    init(marca: String, velocidad: Int) {
        self.marca = marca
        self.velocidad = velocidad
    }
}


// =========================================
// LECCIÓN 8: PROTOCOLOS ← ESCRIBE AQUÍ
// =========================================
//
// Un protocolo es un "contrato" que define qué propiedades o métodos
// debe tener cualquier tipo que lo adopte.
//
// Sintaxis:
//   protocol NombreProtocolo {
//       var propiedad: Tipo { get }
//       func metodo()
//   }
//
// Ejemplo:
//   protocol Describible {
//       var descripcion: String { get }
//   }
//
//   struct Perro: Describible {
//       var nombre: String
//       var descripcion: String {
//           return "Soy un perro llamado \(nombre)"
//       }
//   }
//
//   let perro = Perro(nombre: "Rex")
//   print(perro.descripcion)  // "Soy un perro llamado Rex"
//
// Reglas clave:
//   - Tanto structs como classes pueden adoptar protocolos
//   - Un tipo puede adoptar MÚLTIPLES protocolos separados por coma
//   - Si adoptas un protocolo, DEBES implementar todo lo que exige
//
// EJERCICIO 1:
//   Define un protocolo "Saludable" con un método:
//     func saludar() -> String
//   Crea un struct "Estudiante" con propiedades nombre y carrera
//   que adopte el protocolo e imprima "Hola, soy [nombre] y estudio [carrera]"

protocol Saludable {
    func saludar() -> String
}

struct Estudiante: Saludable {
    let nombre: String
    let carrera: String
    
    func saludar() -> String {
        return "Hola, soy \(nombre) y estudio \(carrera)"
        // ERRONEO!!!!!
        //  self.nombre = "Nicolas"
        //  self.carrera = "Administración"

        //  print("Hola, soy \(nombre) y estudio \(carrera)")
    }
    
}



protocol Calculable {
    func area() -> Double
}

struct Cuadrado: Calculable {
    var lado: Double
    func area() -> Double {
        return lado * lado
    }
}

struct Circulo: Calculable {
    var radio: Double
    func area() -> Double {
        return 3.1416 * radio * radio
    }
}



// EJERCICIO 2:
//   Define un protocolo "Calculable" con un método:
//     func area() -> Double
//   Crea dos structs: "Cuadrado" (lado: Double) y "Circulo" (radio: Double)
//   que adopten el protocolo y calculen su área.
//   (Área cuadrado = lado * lado, Área círculo = 3.1416 * radio * radio)
//
// Escribe tu código debajo:



