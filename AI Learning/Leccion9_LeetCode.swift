import Foundation

// =========================================================
// LECCIÓN 9 — LEETCODE EASY EN SWIFT
// =========================================================
//
// LeetCode = plataforma con problemas de programación por
// dificultad (Easy → Medium → Hard). En las entrevistas de
// software developer casi siempre piden resolver uno.
//
// El formato SIEMPRE es el mismo:
//   - Te dan una función a medio hacer (la "firma")
//   - Tú completas el CUERPO (lo que va entre las llaves { })
//
// CÓMO TRABAJAR ESTE ARCHIVO:
//   1. Lee el enunciado de cada ejercicio
//   2. Escribe tu código donde dice "ESCRIBE AQUÍ"
//   3. Guarda y avísame → lo ejecutamos juntos para ver si pasa
//
// Al final del archivo, runPlayground() llama a tus funciones
// para probarlas. NO borres esa parte.


// =========================================================
// EJERCICIO 1 — ¿Número par?   ✅ RESUELTO POR NICOLAS
// =========================================================
//
// ENUNCIADO:
//   Recibe un número entero y devuelve true si es PAR,
//   o false si es IMPAR.
//
// EJEMPLOS:
//   esPar(numero: 4)  → true   (4 es par)
//   esPar(numero: 7)  → false  (7 es impar)

func esPar(numero: Int) -> Bool {
    if numero % 2 == 0 {
        return true
    } else {
        return false
    }
}


// =========================================================
// EJERCICIO 2 — El mayor de dos números
// =========================================================
//
// ENUNCIADO:
//   Recibe dos números enteros y devuelve el MÁS GRANDE.
//   (si son iguales, devuelve cualquiera de los dos)
//
// EJEMPLOS:
//   elMayor(a: 3, b: 8)   → 8
//   elMayor(a: 10, b: 2)  → 10
//
// PISTAS:
//   - Necesitas un if/else para comparar a y b
//   - En cada rama haces un return distinto
//   - Recuerda: esta función devuelve un Int, no un Bool

func elMayor(a: Int, b: Int) -> Int {
    if a > b {
        return a
    } else {
        return b
    }
}


// =========================================================
// EJERCICIO 3 — Clasificar un número
// =========================================================
//
// ENUNCIADO:
//   Recibe un número entero y devuelve un texto (String):
//     - "positivo"  si el número es mayor que 0
//     - "negativo"  si el número es menor que 0
//     - "cero"      si el número es exactamente 0
//
// EJEMPLOS:
//   clasificar(numero: 5)   → "positivo"
//   clasificar(numero: -3)  → "negativo"
//   clasificar(numero: 0)   → "cero"
//
// PISTAS:
//   - Ahora son 3 caminos, así que usa: if / else if / else
//   - Estructura:
//         if numero > 0 {
//             return "positivo"
//         } else if numero < 0 {
//             return "negativo"
//         } else {
//             return "cero"
//         }
//   - Ojo: esta función devuelve un String, así que lo que
//     retornas va entre comillas "asi"

func clasificar(numero: Int) -> String {

    // ESCRIBE AQUÍ 👇
    if numero > 0 {
        return "positivo"
    } else if numero < 0 {
        return "negativo"
    } else {
        return "cero"
    }
}


// =========================================================
// ZONA DE PRUEBAS — aquí se ejecutan tus funciones
// =========================================================
//
// No borres esto. Cuando termines un ejercicio,
// descomenta (quita las //) la línea que lo prueba.

func runPlayground() {

    // --- Prueba Ejercicio 1 ---
    print(esPar(numero: 4))   // debería imprimir: true
    print(esPar(numero: 7))   // debería imprimir: false

    // --- Prueba Ejercicio 2 ---
    print(elMayor(a: 3, b: 8))   // debería imprimir: 8
    print(elMayor(a: 10, b: 2))  // debería imprimir: 10

    // --- Prueba Ejercicio 3 ---
    print(clasificar(numero: 5))    // debería imprimir: positivo
    print(clasificar(numero: -3))   // debería imprimir: negativo
    print(clasificar(numero: 0))    // debería imprimir: cero

}

runPlayground()
