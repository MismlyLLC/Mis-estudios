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
// EJERCICIO 7 — FIZZBUZZ  (clásico de entrevistas 🎤)
// =========================================================
//
// ENUNCIADO:
//   Recorre los números del 1 al N e imprime:
//     - "FizzBuzz" si el número es divisible por 3 Y por 5
//     - "Fizz"     si es divisible SOLO por 3
//     - "Buzz"     si es divisible SOLO por 5
//     - el número  si no es divisible por ninguno
//
// EJEMPLO (con n = 15):
//   1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
//
// PISTAS:
//   - "divisible por 3" se comprueba con:  numero % 3 == 0
//   - "divisible por 5" se comprueba con:  numero % 5 == 0
//   - Esta función NO devuelve nada (no lleva flecha) → solo imprime
//
// ⚠️ EL ORDEN IMPORTA MUCHÍSIMO:
//   Primero pregunta por AMBOS (3 y 5), porque si preguntas
//   por 3 solo primero, un número como 15 caería en "Fizz"
//   y nunca llegaría a "FizzBuzz". Empieza por el caso más
//   específico.
//
// ESTRUCTURA (complétala):
//   func fizzBuzz(n: Int) {
//       for i in 1...n {
//           if i % 3 == 0 && i % 5 == 0 {
//               print("FizzBuzz")
//           } else if i % 3 == 0 {
//               print("Fizz")
//           } else if i % 5 == 0 {
//               print("Buzz")
//           } else {
//               print(i)
//           }
//       }
//   }
//
// RECORDATORIO: && significa "Y" (las dos cosas a la vez)

func fizzBuzz(n: Int) {
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}


// =========================================================
// RETO 1 — Contar los pares de una lista   (DESDE CERO 🔥)
// =========================================================
//
// Este es tu primer reto SIN estructura de guía.
// Piénsalo y escríbelo completo tú mismo.
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve CUÁNTOS números
//   pares hay en la lista.
//
// EJEMPLOS:
//   contarPares(numeros: [1, 2, 3, 4, 5, 6])  → 3   (el 2, 4 y 6)
//   contarPares(numeros: [7, 9, 11])          → 0   (ninguno es par)
//   contarPares(numeros: [2, 4, 8])           → 3   (los tres)
//
// (Ya tienes TODO lo necesario: for, if, %, y un acumulador.
//  Recuerda: un número es par si  numero % 2 == 0)

func contarPares(numeros: [Int]) -> Int {
    var contador = 0
    for par in numeros {
        if par % 2 == 0 {
            contador = contador + 1
        }
    }
    return contador
}


// =========================================================
// RETO 2 — Contar los mayores que 10   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve CUÁNTOS números
//   son mayores que 10.
//
// EJEMPLOS:
//   contarMayoresQue10(numeros: [5, 12, 8, 20, 3])  → 2   (el 12 y el 20)
//   contarMayoresQue10(numeros: [1, 2, 3])          → 0   (ninguno)
//   contarMayoresQue10(numeros: [11, 50, 99])       → 3   (los tres)
//
// (Mismo patrón que contarPares. Solo cambia la condición
//  del if: en vez de "% 2 == 0", ahora es "> 10")

func contarMayoresQue10(numeros: [Int]) -> Int {

    // ESCRIBE AQUÍ 👇 — tú solo
    var contador = 0
    for numero in numeros {
        if numero > 10 {
            contador = contador + 1
        }
    }
    return contador
}


// =========================================================
// RETO 3 — Sumar solo los pares   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve la SUMA de los
//   números pares (ignora los impares).
//
// EJEMPLOS:
//   sumarPares(numeros: [1, 2, 3, 4])   → 6    (2 + 4)
//   sumarPares(numeros: [10, 5, 20])    → 30   (10 + 20)
//   sumarPares(numeros: [1, 3, 5])      → 0    (no hay pares)
//
// (Mezcla de dos cosas que ya sabes: acumular una SUMA
//  como en sumarHasta, pero solo cuando el número es par)

func sumarPares(numeros: [Int]) -> Int {
    var suma = 0
    for numero in numeros {
        if numero.isMultiple(of: 2) {
            suma = suma + numero
        }
    }
    return suma
}


// =========================================================
// RETO 4 — Contar cuántos son negativos   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve CUÁNTOS números
//   son negativos (menores que 0).
//
// EJEMPLOS:
//   contarNegativos(numeros: [-1, 2, -3, 4])   → 2    (el -1 y el -3)
//   contarNegativos(numeros: [5, 10, 15])      → 0
//   contarNegativos(numeros: [-8, -2, -100])   → 3

func contarNegativos(numeros: [Int]) -> Int {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
    
    var contador = 0
    for numero in numeros {
        if numero < 0 {
            contador = contador + 1
        }
    }
    return contador
}


// =========================================================
// RETO 5 — El menor de una lista   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un array de enteros y devuelve el número MÁS
//   PEQUEÑO de la lista.
//
// EJEMPLOS:
//   menorDeLista(numeros: [3, 9, 1, 7])   → 1
//   menorDeLista(numeros: [5, 2, 8])      → 2
//   menorDeLista(numeros: [10])           → 10
//
// (Es como mayorDeLista, pero al revés. Piensa: ¿con qué
//  comparación te quedas con el MÁS PEQUEÑO?)

func menorDeLista(numeros: [Int]) -> Int {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
   var mayor = numeros[0]
    for numero in numeros {
        if numero < mayor {
            mayor = numero
        }
    }
    return mayor
}


// =========================================================
// 🆕 MUNDO NUEVO: TRABAJAR CON TEXTO (String)
// =========================================================
//
// Hasta ahora usaste números. Ahora toca TEXTO. Lo nuevo:
//
// 1. Un String se puede RECORRER letra por letra con un for:
//        for letra in "hola" {
//            print(letra)      // h, o, l, a  (una por línea)
//        }
//
// 2. Para comparar una letra, va entre comillas DOBLES:
//        if letra == "a" { ... }
//
// (¡Es el MISMO patrón del acumulador que ya dominas!
//  Solo que ahora recorres letras en vez de números.)


// =========================================================
// RETO 6 — Contar cuántas veces aparece una letra
// =========================================================
//
// ENUNCIADO:
//   Recibe un texto y una letra. Devuelve CUÁNTAS veces
//   aparece esa letra en el texto.
//
// EJEMPLOS:
//   contarLetra(texto: "banana", letra: "a")   → 3
//   contarLetra(texto: "hola", letra: "o")     → 1
//   contarLetra(texto: "swift", letra: "z")    → 0
//
// PISTA: mismo molde de siempre 👇
//   - un contador (var) que empieza en 0, ARRIBA del for
//   - recorres cada letra del texto con:  for l in texto
//   - un if que compara:  if l == letra
//   - return del contador al final

func contarLetra(texto: String, letra: Character) -> Int {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var contador = 0
    for l in texto {
        if l == letra {
            contador = contador + 1
        }
    }
    return contador
}


// =========================================================
// RETO 7 — Contar vocales   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un texto y devuelve CUÁNTAS vocales tiene
//   (a, e, i, o, u).
//
// EJEMPLOS:
//   contarVocales(texto: "hola")        → 2   (o, a)
//   contarVocales(texto: "murcielago")  → 5   (u, i, e, a, o)
//   contarVocales(texto: "xyz")         → 0
//
// LO NUEVO: comparar contra VARIAS letras con || ("O")
//   Igual que contarLetra, pero en el if preguntas si la
//   letra es a, O e, O i, O o, O u:
//
//     if l == "a" || l == "e" || l == "i" || l == "o" || l == "u" {
//
//   (|| significa "O" — basta que UNA sea verdadera)

func contarVocales(texto: String) -> Int {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var contador = 0
    for l in texto {
        if l == "a" || l == "e" || l == "i" || l == "o" || l == "u" {
            contador = contador + 1
        }
    }
    return contador
}


// =========================================================
// RETO 8 — Invertir un texto   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un texto y devuelve el mismo texto al REVÉS.
//
// EJEMPLOS:
//   invertir(texto: "hola")   → "aloh"
//   invertir(texto: "swift")  → "tfiws"
//   invertir(texto: "a")      → "a"
//
// LA TÉCNICA (acumulador, pero con texto):
//   - Empiezas con un texto VACÍO:  var resultado = ""
//   - Recorres cada letra del texto original
//   - A cada letra la pones DELANTE de lo que llevas:
//         resultado = letra + resultado
//     ¡El orden importa! Poniendo la letra ADELANTE, el
//     texto se va armando al revés.
//
// COMO FUNCIONA con "hola":
//   letra 'h' → resultado = "h" + ""     = "h"
//   letra 'o' → resultado = "o" + "h"    = "oh"
//   letra 'l' → resultado = "l" + "oh"   = "loh"
//   letra 'a' → resultado = "a" + "loh"  = "aloh"  ✅
//
// OJO — un detalle nuevo:
//   letra es un Character. Para pegarla a un String hay que
//   convertirla con String(letra). O sea:
//         resultado = String(letra) + resultado

func invertir(texto: String) -> String {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var resultado = ""
    for letra in texto {
        resultado = String(letra) + resultado
    }
    return resultado
}


// =========================================================
// RETO 9 — ¿Es palíndromo?   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Un palíndromo es una palabra que se lee IGUAL al derecho
//   y al revés. Recibe un texto y devuelve true si es
//   palíndromo, o false si no.
//
// EJEMPLOS:
//   esPalindromo(texto: "oso")    → true   (oso al revés es oso)
//   esPalindromo(texto: "ana")    → true
//   esPalindromo(texto: "hola")   → false  (al revés es aloh)
//
// LA IDEA CLAVE (reutilizas lo que YA hiciste 😏):
//   1. Inviertes el texto (¡como en el RETO 8!)
//   2. Comparas: ¿el texto original es IGUAL al invertido?
//      - si son iguales  → es palíndromo → true
//      - si son distintos → no lo es      → false
//
// PISTAS:
//   - Devuelve Bool (true/false), así que -> Bool
//   - Puedes invertir el texto con la MISMA técnica del reto 8
//     (un var resultado = "" y for letra... resultado adelante)
//   - Al final compara con ==:  if texto == invertido { ... }
//
// (No necesitas llamar a la función invertir; puedes escribir
//  la inversión aquí dentro. Pero si quieres reutilizarla,
//  también se vale: let invertido = invertir(texto: texto) )

func esPalindromo(texto: String) -> Bool {

    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var invertido = ""
    for letra in texto {
        invertido = String(letra) + invertido
    }
    if texto == invertido {
        return true
    } else {
        return false
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

    // --- Prueba Ejercicio 7 (FizzBuzz) ---
    fizzBuzz(n: 15)   // imprime del 1 al 15 con Fizz/Buzz/FizzBuzz

    // --- Prueba RETO 1 (contar pares) ---
    print(contarPares(numeros: [1, 2, 3, 4, 5, 6]))   // debería imprimir: 3
    print(contarPares(numeros: [7, 9, 11]))           // debería imprimir: 0
    print(contarPares(numeros: [2, 4, 8]))            // debería imprimir: 3

    // --- Prueba RETO 2 (contar mayores que 10) ---
    print(contarMayoresQue10(numeros: [5, 12, 8, 20, 3]))   // debería imprimir: 2
    print(contarMayoresQue10(numeros: [1, 2, 3]))           // debería imprimir: 0
    print(contarMayoresQue10(numeros: [11, 50, 99]))        // debería imprimir: 3

    // --- Prueba RETO 3 (sumar pares) ---
    print(sumarPares(numeros: [1, 2, 3, 4]))   // debería imprimir: 6
    print(sumarPares(numeros: [10, 5, 20]))    // debería imprimir: 30
    print(sumarPares(numeros: [1, 3, 5]))      // debería imprimir: 0

    // --- Prueba RETO 4 (contar negativos) ---
    print(contarNegativos(numeros: [-1, 2, -3, 4]))   // debería imprimir: 2
    print(contarNegativos(numeros: [5, 10, 15]))      // debería imprimir: 0
    print(contarNegativos(numeros: [-8, -2, -100]))   // debería imprimir: 3

    // --- Prueba RETO 5 (menor de la lista) ---
    print(menorDeLista(numeros: [3, 9, 1, 7]))   // debería imprimir: 1
    print(menorDeLista(numeros: [5, 2, 8]))      // debería imprimir: 2
    print(menorDeLista(numeros: [10]))           // debería imprimir: 10

    // --- Prueba RETO 6 (contar letra) ---
    print(contarLetra(texto: "banana", letra: "a"))   // debería imprimir: 3
    print(contarLetra(texto: "hola", letra: "o"))     // debería imprimir: 1
    print(contarLetra(texto: "swift", letra: "z"))    // debería imprimir: 0

    // --- Prueba RETO 7 (contar vocales) ---
    print(contarVocales(texto: "hola"))         // debería imprimir: 2
    print(contarVocales(texto: "murcielago"))   // debería imprimir: 5
    print(contarVocales(texto: "xyz"))          // debería imprimir: 0

    // --- Prueba RETO 8 (invertir texto) ---
    print(invertir(texto: "hola"))    // debería imprimir: aloh
    print(invertir(texto: "swift"))   // debería imprimir: tfiws
    print(invertir(texto: "a"))       // debería imprimir: a

    // --- Prueba RETO 9 (palíndromo) ---
    print(esPalindromo(texto: "oso"))    // debería imprimir: true
    print(esPalindromo(texto: "ana"))    // debería imprimir: true
    print(esPalindromo(texto: "hola"))   // debería imprimir: false

}

runPlayground()
