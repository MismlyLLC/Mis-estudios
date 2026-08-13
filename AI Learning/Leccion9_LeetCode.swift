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
// EJERCICIO 4 — Sumar del 1 al N
// =========================================================
//
// ENUNCIADO:
//   Recibe un número N y devuelve la SUMA de todos los
//   números del 1 hasta N (incluido).
//
// EJEMPLOS:
//   sumarHasta(n: 5)   → 15   (1 + 2 + 3 + 4 + 5)
//   sumarHasta(n: 3)   → 6    (1 + 2 + 3)
//   sumarHasta(n: 1)   → 1
//
// CONCEPTO NUEVO: acumular con un loop
//   - Creamos una variable "total" que empieza en 0
//   - Recorremos del 1 al n con un for
//   - En cada vuelta le SUMAMOS el número a total
//   - Al final devolvemos total
//
// ESTRUCTURA (complétala):
//   func sumarHasta(n: Int) -> Int {
//       var total = 0                 // el acumulador, empieza en 0
//       for i in 1...n {              // recorre 1, 2, 3, ... , n
//           total = total + i         // le sumo i a total en cada vuelta
//       }
//       return total                  // devuelvo el resultado final
//   }
//
// OJO:
//   - "total" es var (cambia en cada vuelta), no let
//   - el return va AFUERA del for (después de que termine el loop)

func sumarHasta(n: Int) -> Int {

    // ESCRIBE AQUÍ 👇
    
    var total = 0
    for i in 1...n {
        total = total + i
    }
    return total
}


// =========================================================
// EJERCICIO 5 — El mayor de una lista
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve el número MÁS
//   GRANDE de la lista.
//
// EJEMPLOS:
//   mayorDeLista(numeros: [3, 9, 1, 7])   → 9
//   mayorDeLista(numeros: [5, 2, 8, 8])   → 8
//   mayorDeLista(numeros: [10])           → 10
//
// CONCEPTO NUEVO: recorrer un ARRAY con un for
//   Antes recorrías números (1...n). Ahora recorres los
//   ELEMENTOS de un array, uno por uno:
//
//       for numero in numeros {
//           // aquí "numero" es cada elemento de la lista
//       }
//
// LA ESTRATEGIA (el acumulador, pero para el máximo):
//   1. Guarda el PRIMER elemento como "el mayor hasta ahora"
//   2. Recorre la lista. Si encuentras uno más grande,
//      actualiza "el mayor hasta ahora"
//   3. Al final, ese es el mayor de todos
//
// ESTRUCTURA (complétala):
//   func mayorDeLista(numeros: [Int]) -> Int {
//       var mayor = numeros[0]        // asumo que el 1º es el mayor
//       for numero in numeros {       // recorro toda la lista
//           if numero > mayor {       // ¿encontré uno más grande?
//               mayor = numero        // sí → lo guardo como el nuevo mayor
//           }
//       }
//       return mayor                  // devuelvo el mayor encontrado
//   }
//
// OJO:
//   - numeros[0] es el PRIMER elemento (los índices empiezan en 0)
//   - "mayor" es var porque va cambiando
//   - AQUÍ SÍ hay un if adentro del for (para comparar)

func mayorDeLista(numeros: [Int]) -> Int {
    var mayor = numeros[0]
    for numero in numeros {
        if numero > mayor {
            mayor = numero
        }
    }
    return mayor
}


// =========================================================
// EJERCICIO 6 — TWO SUM  (el famoso 🏆)
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y un número "target".
//   Devuelve los ÍNDICES (posiciones) de los dos números
//   que sumados dan el target.
//
// EJEMPLOS:
//   twoSum(numeros: [2, 7, 11, 15], target: 9)  → [0, 1]
//     (porque numeros[0] + numeros[1] = 2 + 7 = 9)
//   twoSum(numeros: [3, 2, 4], target: 6)       → [1, 2]
//     (porque numeros[1] + numeros[2] = 2 + 4 = 6)
//
// CONCEPTO NUEVO: un loop DENTRO de otro loop
//   Para probar CADA PAR de números, necesitas recorrer la
//   lista dos veces, una dentro de la otra.
//
//   Usamos los ÍNDICES (posiciones) en vez de los valores,
//   porque hay que devolver posiciones:
//     - numeros.count es cuántos elementos hay
//     - numeros[i] es el elemento en la posición i
//
//   for i in 0..<numeros.count {          // primer número
//       for j in (i + 1)..<numeros.count {  // segundo número
//           // aquí comparo numeros[i] + numeros[j]
//       }
//   }
//
//   ¿Por qué j empieza en (i + 1)?
//     Para no sumar un número consigo mismo y no repetir pares.
//
// LA ESTRATEGIA:
//   1. Recorro cada posición i
//   2. Para cada i, recorro las posiciones siguientes j
//   3. Si numeros[i] + numeros[j] == target → devuelvo [i, j]
//   4. Si nunca encuentro, devuelvo [] (lista vacía)
//
// ESTRUCTURA (complétala):
//   func twoSum(numeros: [Int], target: Int) -> [Int] {
//       for i in 0..<numeros.count {
//           for j in (i + 1)..<numeros.count {
//               if numeros[i] + numeros[j] == target {
//                   return [i, j]
//               }
//           }
//       }
//       return []
//   }
//
// OJO:
//   - El tipo de retorno es [Int] (una lista, no un número)
//   - return [i, j] devuelve una lista con las dos posiciones
//   - El return [] del final es "no encontré nada"

func twoSum(numeros: [Int], target: Int) -> [Int] {
    for i in 0..<numeros.count {
        for j in (i + 1)..<numeros.count {
            if numeros[i] + numeros[j] == target {
                return [i, j]
            }
        }
    }
    return []
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

    // --- Prueba Ejercicio 4 ---
    print(sumarHasta(n: 5))   // debería imprimir: 15
    print(sumarHasta(n: 3))   // debería imprimir: 6
    print(sumarHasta(n: 1))   // debería imprimir: 1

    // --- Prueba Ejercicio 5 ---
    print(mayorDeLista(numeros: [3, 9, 1, 7]))   // debería imprimir: 9
    print(mayorDeLista(numeros: [5, 2, 8, 8]))   // debería imprimir: 8
    print(mayorDeLista(numeros: [10]))           // debería imprimir: 10

    // --- Prueba Ejercicio 6 (Two Sum) ---
    print(twoSum(numeros: [2, 7, 11, 15], target: 9))   // debería imprimir: [0, 1]
    print(twoSum(numeros: [3, 2, 4], target: 6))        // debería imprimir: [1, 2]

}

runPlayground()
