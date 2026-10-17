//
//  Leccion12_Problemas.swift
//  Mis-estudios
//
//  Lección 12 — Problemas en hoja en blanco 🧠
//  Para correr: swift "AI Learning/Leccion12_Problemas.swift"
//

// =========================================================
// PROBLEMA 1 — Repetir palabra 🔁
// =========================================================
// Enunciado:
//   Escribe una función `repetir` que reciba una palabra y un número,
//   y devuelva la palabra repetida esa cantidad de veces, toda junta.
//
// Ejemplos:
//   repetir("hola", 3)  → "holaholahola"
//   repetir("ja", 4)    → "jajajaja"
//   repetir("sol", 1)   → "sol"
//
// Dato útil: "ja" + "ja" → "jaja"

// ESCRIBE AQUÍ 👇

func repetir (_ palabra: String,_ numero: Int) -> (String) {
    
    var repeticion = ""
    for letra in 1...numero { repeticion += palabra
        
    }
    return repeticion
}
print(repetir("hola", 3))
print(repetir("ja", 4))
print(repetir("sol", 1))




// =========================================================
// PROBLEMA 2 — ¿Todos positivos? ✅❌
// =========================================================
// Enunciado:
//   Escribe una función `todosPositivos` que reciba una lista de números
//   y devuelva `true` si TODOS son mayores que 0, o `false` si hay al menos uno que no.
//
// Ejemplos:
//   todosPositivos([3, 5, 1])      → true
//   todosPositivos([4, -2, 7])     → false
//   todosPositivos([0, 8])         → false   (el 0 no es positivo)
//
// Dato útil: basta con encontrar UNO que no sea positivo para saber la respuesta.

// ESCRIBE AQUÍ 👇

func todosPositivos (_ numeros: [Int]) -> (Bool) {
    
    for negativo in numeros{
        if negativo <= 0 {
            return false
            }
        }
            return true
        }



print(todosPositivos([3, 5, 1]))
print(todosPositivos([4, -2, 7]))
print(todosPositivos([0, 8]))




// =========================================================
// PROBLEMA 3 — Solo las palabras largas 📏
// =========================================================
// Enunciado:
//   Escribe una función `soloLargas` que reciba una lista de palabras y un número mínimo,
//   y devuelva una LISTA NUEVA solo con las palabras que tienen MÁS letras que ese mínimo.
//
// Ejemplos:
//   soloLargas(["sol", "montaña", "mar", "elefante"], 4)  → ["montaña", "elefante"]
//   soloLargas(["hola", "chao", "si"], 3)                 → ["hola", "chao"]
//   soloLargas(["a", "b"], 5)                             → []
//
// Dato útil: lista.append("hola") → agrega "hola" al final de la lista

// ESCRIBE AQUÍ 👇

func soloLargas (_ palabras: [String], _ minimo: Int) -> [String] {
    var palabrasLargas: [String] = []
    for palabra in palabras {
        if palabra.count > minimo {
            palabrasLargas.append(palabra)
        }
    }
    return palabrasLargas
}


print(soloLargas(["sol", "montaña", "mar", "elefante"], 4))
print(soloLargas(["hola", "chao", "si"], 3))
print(soloLargas(["a", "b"], 5))




// =========================================================
// PROBLEMA 4 — ¿Es palíndromo? 🔄
// =========================================================
// Enunciado:
//   Escribe una función `esPalindromo` que reciba una palabra
//   y devuelva `true` si se lee IGUAL al derecho y al revés, o `false` si no.
//
// Ejemplos:
//   esPalindromo("oso")     → true
//   esPalindromo("reconocer") → true
//   esPalindromo("casa")    → false
//
// Dato útil: String("hola".reversed()) → "aloh"

// ESCRIBE AQUÍ 👇

func esPalindromo (_ palabra: String) -> (Bool) {
    
    return palabra == String(palabra.reversed()) }




print(esPalindromo("oso"))
print(esPalindromo("reconocer"))
print(esPalindromo("casa"))




// =========================================================
// PROBLEMA 5 — Del más chico al más grande 📐
// =========================================================
// Enunciado:
//   Escribe una función `diferencia` que reciba una lista de números
//   y devuelva la resta entre el número MÁS GRANDE y el MÁS CHICO.
//
// Ejemplos:
//   diferencia([3, 9, 1])      → 8    (9 - 1)
//   diferencia([5, 5, 5])      → 0    (5 - 5)
//   diferencia([10, 4, 7, 2])  → 8    (10 - 2)
//
// Dato útil: lista[0] → el primer número de la lista

// ESCRIBE AQUÍ 👇




print(diferencia([3, 9, 1]))
print(diferencia([5, 5, 5]))
print(diferencia([10, 4, 7, 2]))
