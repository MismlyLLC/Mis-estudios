//
//  Leccion11_Clases.swift
//  Mis-estudios
//
//  Lección 11 — Construir una class DESDE CERO, pieza por pieza 🧱
//  Para correr: swift "AI Learning/Leccion11_Clases.swift"
//

// =========================================================
// EJERCICIO 1 — El molde vacío
// =========================================================
// Enunciado:
//   Crea un molde (class) llamado `Perro`. Todavía vacío.
//   Luego crea un perro con ese molde y guárdalo en `let miPerro`.
//
// Ejemplo (con otro molde):
//   class Gato {
//   }
//   let miGato = Gato()
//
// Resultado esperado al correr:
//   Perro creado ✅

// ESCRIBE AQUÍ 👇

class Perro {
}
    let miPerro = Perro()

print("Perro creado ✅")




// =========================================================
// EJERCICIO 2 — 🔍 Encuentra el error
// =========================================================
// Este código NO funciona. Tiene UN error.
// El molde Gato ahora tiene una caja `nombre` que ya viene con "Michi".
// Resultado esperado al arreglarlo:
//   Michi

class Gato {
    var nombre = "Michi"
}

let miGato = Gato
print(miGato.nombre)




// =========================================================
// EJERCICIO 3 — 🧠 Problema (solo con tu cabeza)
// =========================================================
// Enunciado:
//   Escribe una función `palabraMasLarga` que reciba una lista de palabras
//   y devuelva la palabra MÁS LARGA (la que tiene más letras).
//
// Ejemplos:
//   palabraMasLarga(["sol", "montaña", "mar"])      → "montaña"
//   palabraMasLarga(["gato", "elefante", "perro"])  → "elefante"
//
// Dato útil: "hola".count → 4  (cuántas letras tiene)

// ESCRIBE AQUÍ 👇

func palabraMasLarga(_ lista: [String]) -> String

var masLarga = ""

for palabra in lista {
    if palabra.count > masLarga.count
return palabraMasLarga(palabra: String)
}






print(palabraMasLarga(["sol", "montaña", "mar"]))
print(palabraMasLarga(["gato", "elefante", "perro"]))
