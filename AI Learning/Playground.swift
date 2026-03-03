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



// =========================================
// NOTAS DE REPASO — ERRORES COMETIDOS HOY
// =========================================
//
// ESQUELETO 1 — Optional
//   ❌ var x Tipo? = nil        → falta el : entre nombre y tipo
//   ✅ var x: Tipo? = nil       → siempre: nombre : Tipo? = valor
//
//   ❌ if let x = 100           → 100 es un valor, no la variable optional
//   ✅ if let x = x             → se pasa la variable optional, no su valor
//
// ESQUELETO 2 — Struct
//   ❌ var propiedad: Nombre    → Nombre es el struct, no el tipo
//   ✅ var propiedad: Tipo      → Tipo es el tipo de dato (String, Int, etc.)
//
// ESQUELETO 2 — Class
//   ❌ var propiedad: Tipo {    → la { abre un bloque de propiedad computada
//        init(...) { }          → el init NO puede ir dentro de la propiedad
//      }
//   ✅ var propiedad: Tipo      → sin llaves, solo declaración
//      init(propiedad: Tipo) {  → el init va al mismo nivel que la propiedad
//          self.propiedad = propiedad
//      }
//
//   ❌ init(propiedad: tipo)    → tipo con minúscula
//   ✅ init(propiedad: Tipo)    → los tipos siempre con mayúscula
//
//   ❌ (init propiedad: Tipo)   → paréntesis en el lugar equivocado
//   ✅ init(propiedad: Tipo)    → init primero, paréntesis después
//
// ESQUELETO 3 — Protocolo
//   ❌ func option -> Value()   → paréntesis en el tipo de retorno
//   ✅ func metodo() -> Tipo    → paréntesis van después del nombre
//
//   ❌ protocol Adoptante: Tipo → nombre equivocado y : Tipo no va aquí
//   ✅ protocol Nombre          → solo la palabra protocol y el nombre
//
//   ❌ struct Adoptante         → falta indicar qué protocolo adopta
//   ✅ struct Adoptante: Nombre → : Nombre indica que lo adopta
//
//   ❌ return Valor             → Valor con mayúscula parece un tipo
//   ✅ return valor             → los valores van con minúscula
//
// REGLA IMPORTANTE:
//   Structs, classes y protocolos van FUERA de runPlayground()
//   Dentro de la función solo van instancias y print()
//
//   ❌ func runPlayGround()     → G mayúscula (es error de tipeo)
//   ✅ func runPlayground()     → g minúscula



