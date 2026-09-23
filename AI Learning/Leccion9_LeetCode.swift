import Foundation

// #########################################################
// #  📌 LEE ESTO PRIMERO — sesión del 21-22 sep 2026      #
// #########################################################
//
// CERRADOS HOY:  reto 14 (promedio), 15 (contiene),
//                16 (soloPares), 17 (factorial)  ✅
//
// ME QUEDAN DOS, y los dos son cortos:
//
//   🔴 RETO 12 — esPrimo          → línea 784
//      Mi lógica está bien, pero el programa SE CAE con 1 y con 2.
//      Con numero = 1 mi for queda "for i in 2...0"  → rango imposible.
//      Con numero = 2 queda      "for i in 2...1"  → igual.
//      Falta un if ANTES del for que conteste de una y se vaya,
//      sin llegar nunca al bucle. (1 no es primo → false.
//      2 sí es primo → true.)
//
//   🔴 RETO 13 — invertirNumero   → línea 833
//      Son DOS PALABRAS. En la línea del acumulador y en el return
//      puse "numero" donde va "invertido". Por eso devuelve 123
//      en vez de 321.
//
//
// =========================================================
// 🧠 EN QUÉ ME ESTABA EQUIVOCANDO (esto es lo importante)
// =========================================================
//
// La lógica SIEMPRE la acerté. Ninguno de mis fallos de hoy fue
// de razonamiento. Fueron estos tres, una y otra vez:
//
//
// ── FALLO 1 ─────────────────────────────────────────────
//    EN EL "return" PONÍA UN DATO, NO MI CAJA
//
//    Lo que escribí a lo largo del día:
//
//      reto 13:  return numero            ← lo que ENTRÓ
//      reto 16:  return []                ← vacío
//      reto 16:  return [1, 2, 3, 4, 5, 6]  ← un ejemplo del enunciado
//      reto 17:  return factorial         ← el NOMBRE de la función
//
//    Creía que en el return se escribían los datos. No.
//
//    UNA FUNCIÓN ES UNA MÁQUINA:
//
//       [1,2,3,4]  ──→  ┌───────────┐  ──→  [2,4]
//       los datos        │ soloPares │       el resultado
//       ENTRAN por       └───────────┘       SALE por
//       el paréntesis                        el return
//
//    - El parámetro (numeros) es la ranura de entrada. Ya viene
//      llena. YO NO LA ESCRIBO.
//    - El return es la bandeja de salida. Ahí va LA CAJA QUE LLENÉ.
//
//    Y "print" es otra cosa distinta: print vive en el playground
//    y solo MUESTRA en pantalla lo que la función le entregó.
//    Mi función no imprime nada ni sabe que existe una pantalla.
//    Solo fabrica y entrega.
//
//    ⭐ REGLA: antes de dar por terminada una función, leo mi
//       return y me pregunto: "¿esto es la caja que acabo de
//       llenar?". Cinco segundos. Me habría ahorrado 4 retos.
//
//
// ── FALLO 2 ─────────────────────────────────────────────
//    LE COLGABA UN "else" A CUALQUIER COSA
//
//    Lo intenté 4 veces seguidas en el reto 15:
//
//      return true {        ← else colgando de un return
//          else { ... }
//      }
//
//      for num in numeros {
//      }
//      else { return false }   ← else colgando de un for
//
//    ⭐ REGLA: "else" SOLO puede ir pegado al "}" de un "if".
//       A nada más. Ni a un for, ni a un return.
//       Si quiero escribir un else y no puedo señalar con el dedo
//       de qué if cuelga → no va ahí.
//
//    Y por qué en "contiene" NO hacía falta ningún else:
//
//      for num in numeros {
//          if num == buscado {
//              return true      ← si lo encuentra, SE VA. No sigue.
//          }
//      }
//      return false             ← si llegué aquí es que NO se fue
//                                  antes, o sea que no lo encontré
//
//    Ese "return false" no es "si no". Es "se acabó el camino".
//    Es simplemente la última línea de la función.
//
//    💡 Lo nuevo que aprendí: un return dentro de un bucle es una
//       SALIDA DE EMERGENCIA. No corta solo el for: sale de la
//       función entera al instante.
//
//    🔑 Y la idea de fondo: para decir "SÍ está" me basta UNO.
//       Para decir "NO está" tengo que haber mirado TODOS.
//       Por eso el true va dentro del for y el false va fuera.
//
//
// ── FALLO 3 ─────────────────────────────────────────────
//    LAS LLAVES { } (el de siempre)
//
//    En los retos 15 y 17 me descuadraron 3 veces cada uno y hubo
//    que reescribir el esqueleto entero. Parchear NO sirve: cada
//    parche mueve otra llave de sitio.
//
//    ⭐ TRUCO, hacerlo SIEMPRE: cuando escriba "{", escribo su "}"
//       en ese mismo momento, las dos vacías. DESPUÉS relleno el medio.
//
//         for num in numeros {
//         }                        ← primero esto
//                                  ← y luego meto el if dentro
//
//       Nunca escribir hacia abajo esperando cerrar al final.
//       Ahí es donde se me descuadra.
//
//    ⭐ SALVAVIDAS DE XCODE: ⌘A (seleccionar todo) + Ctrl+I
//       (re-indentar). Si una llave está mal puesta, el código se
//       va a una sangría rara y lo veo al instante.
//
//
// ── BONUS: dos cosas que SÍ hice bien y eran las difíciles ──
//
//    · Reto 17: arranqué la caja en "var suma = 1" y no en 0.
//      Esa era TODA la dificultad del ejercicio (0 × algo = 0).
//      Lo pensé y lo saqué solo.
//    · Reto 16: declaré la caja con su tipo, "var resultado: [Int] = []".
//      Sintaxis nueva que nadie me había hecho escribir antes.
//
//
// ── LA REGLA DEL ACUMULADOR (de ayer, sigue valiendo) ──────
//
//    LA CAJA APARECE A LOS DOS LADOS DEL "=". Se alimenta de sí misma:
//
//        caja = caja + algo        (sumar)
//        caja = caja * algo        (multiplicar, reto 17)
//
//    Si a la derecha del "=" no veo mi caja, algo está mal.
//
//    Y: dentro del for va lo que se REPITE. Lo que se hace UNA
//    sola vez (dividir, devolver) va FUERA del for.
//
// #########################################################

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
// RETO 10 — Sumar los dígitos de un número   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un número entero y devuelve la SUMA de sus dígitos.
//
// EJEMPLOS:
//   sumarDigitos(numero: 123)   → 6    (1 + 2 + 3)
//   sumarDigitos(numero: 45)    → 9    (4 + 5)
//   sumarDigitos(numero: 7)     → 7
//
// TÉCNICA NUEVA: "pelar" un número dígito por dígito 🧅
//   Con dos operadores sacas los dígitos de derecha a izquierda:
//
//     numero % 10   → te da el ÚLTIMO dígito
//                     (123 % 10 = 3)
//     numero / 10   → le QUITA el último dígito
//                     (123 / 10 = 12, porque es división ENTERA)
//
//   Repites eso en un loop hasta que el número llegue a 0.
//
// COMO FUNCIONA con 123:
//   vuelta 1: 123 % 10 = 3  → suma 3.  Luego 123 / 10 = 12
//   vuelta 2:  12 % 10 = 2  → suma 2.  Luego  12 / 10 = 1
//   vuelta 3:   1 % 10 = 1  → suma 1.  Luego   1 / 10 = 0
//   el número llegó a 0 → paramos.  suma total = 6 ✅
//
// LO NUEVO: usamos "while" en vez de "for"
//   while repite MIENTRAS una condición sea verdadera:
//
//     while numero > 0 {
//         // esto se repite hasta que numero deje de ser > 0
//     }
//
// ESTRUCTURA (complétala):
//   func sumarDigitos(numero: Int) -> Int {
//       var n = numero          // copia para ir modificándola
//       var suma = 0            // el acumulador
//       while n > 0 {
//           suma = suma + (n % 10)   // saco el último dígito y lo sumo
//           n = n / 10               // le quito el último dígito
//       }
//       return suma
//   }
//
// OJO:
//   - Usamos "n" (una copia) porque vamos a ir achicando el número
//   - n % 10 saca el dígito, n / 10 lo quita
//   - el while para solo cuando n llega a 0

func sumarDigitos(numero: Int) -> Int {
    
    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var n = numero
    var suma = 0
    while n > 0 {
        suma = suma + (n % 10)
        n = n / 10
    }
    return suma
}


// =========================================================
// RETO 11 — Contar las palabras de una frase   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un texto y devuelve CUÁNTAS palabras tiene.
//
// EJEMPLOS:
//   contarPalabras(texto: "hola mundo")          → 2
//   contarPalabras(texto: "me gusta programar")  → 3
//   contarPalabras(texto: "swift")               → 1
//
// LA IDEA 💡 (piénsalo antes de escribir):
//   ¿Qué separa una palabra de otra?  Un ESPACIO.
//   "hola mundo"          → 1 espacio  → 2 palabras
//   "me gusta programar"  → 2 espacios → 3 palabras
//   "swift"               → 0 espacios → 1 palabra
//
//   ¿Ves el patrón?   palabras = espacios + 1
//
//   Entonces: cuenta los espacios con tu molde de siempre
//   (var arriba → for → if → return) y al final sumas 1.
//
// PISTA de sintaxis: un espacio como Character se escribe " "
//
//   if letra == " " {

func contarPalabras(texto: String) -> Int {
    
    // ESCRIBE AQUÍ 👇 — hoja en blanco
    var contador = 0
    for letra in texto {
        if letra == " " {
            contador = contador + 1
        }
    }
    return contador + 1
}

// =========================================================
// RETO 12 — ¿Es primo?   (DESDE CERO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Recibe un número y devuelve true si es PRIMO, false si no.
//   Primo = solo se puede dividir por 1 y por sí mismo.
//
// EJEMPLOS:
//   esPrimo(numero: 7)   → true    (nada entre 2 y 6 lo divide)
//   esPrimo(numero: 9)   → false   (el 3 lo divide)
//   esPrimo(numero: 2)   → true
//   esPrimo(numero: 1)   → false   (el 1 NO es primo, por definición)
//
// TÉCNICA NUEVA: la BANDERA 🚩
//   Hasta ahora tu acumulador guardaba un número (var suma = 0).
//   Ahora va a guardar un SÍ/NO → un Bool.
//
//   Empiezas asumiendo que SÍ es primo, y si encuentras un
//   divisor, bajas la bandera a false:
//
//     var esPrimoResultado = true      // 🚩 arriba: asumo que sí
//     for i in 2...(numero - 1) {
//         if numero % i == 0 {         // si i lo divide justo...
//             esPrimoResultado = false // 🚩 abajo: no era primo
//         }
//     }
//     return esPrimoResultado
//
// OJO con los casos raros:
//   - Si numero es 1 o menos → devuelve false ANTES del for
//     (un "if numero <= 1 { return false }" al principio)
//   - Con numero = 2 el rango 2...1 explotaría, pero como el 2
//     entra por el camino normal, pruébalo y mira qué pasa 😉

func esPrimo(numero: Int) -> Bool {
    
    // ESCRIBE AQUÍ 👇 — hoja en blanco
    if numero == 1{
        return false
    }
    if numero == 2 {
        return true
    }
    var esPrimoResultado = true
    for i in 2...(numero - 1) {
        if numero % i == 0 {
            esPrimoResultado = false
        }
    }
    return esPrimoResultado
}







    // =========================================================
    // RETO 13 — Invertir un número   (DESDE CERO 🔥)
    // =========================================================
    //
    // ENUNCIADO:
    //   Recibe un número y devuelve el número AL REVÉS.
    //
    // EJEMPLOS:
    //   invertirNumero(numero: 123)  → 321
    //   invertirNumero(numero: 45)   → 54
    //   invertirNumero(numero: 7)    → 7
    //
    // ESTE COMBINA DOS COSAS QUE YA SABES 🧩
    //   1. "Pelar" el número con % 10 y / 10   (del RETO 10)
    //   2. Ir construyendo el resultado         (como en invertir texto)
    //
    // LA IDEA 💡:
    //   Cada vez que sacas un dígito, al resultado que ya llevas
    //   lo corres un lugar a la izquierda (× 10) y le pegas el dígito nuevo:
    //
    //     resultado = resultado * 10 + (n % 10)
    //
    // COMO FUNCIONA con 123:
    //   arranque:  resultado = 0,  n = 123
    //   vuelta 1:  resultado = 0*10   + 3 = 3     → n = 12
    //   vuelta 2:  resultado = 3*10   + 2 = 32    → n = 1
    //   vuelta 3:  resultado = 32*10  + 1 = 321   → n = 0
    //   n llegó a 0 → paramos.  resultado = 321 ✅
    //
    // Es el mismo while del RETO 10. Solo cambia la línea que acumula.
    
func invertirNumero(numero: Int) -> Int {
    var n = numero
    var invertido = 0

    while n > 0 {
        invertido = invertido * 10 + (n % 10)   // ¿qué va en el hueco?
              n = n / 10          // ¿cómo borro el dígito?
    }

    return invertido                         // ¿qué caja entrego?
}
    
    
    // =========================================================
    // RETO 14 — El promedio de una lista   (DESDE CERO 🔥)
    // =========================================================
    //
    // ENUNCIADO:
    //   Recibe una lista de números y devuelve su PROMEDIO.
    //   (promedio = suma de todos ÷ cuántos son)
    //
    // EJEMPLOS:
    //   promedio(numeros: [2, 4, 6])      → 4     (12 ÷ 3)
    //   promedio(numeros: [10, 20])       → 15    (30 ÷ 2)
    //   promedio(numeros: [5])            → 5
    //
    // SINTAXIS NUEVA — .count 📏
    //   Para saber cuántos elementos tiene una lista:
    //
    //     numeros.count      // [2, 4, 6].count  →  3
    //
    //   (también funciona en texto: "hola".count → 4)
    //
    // Lo demás ya lo sabes: sumas todo con tu molde, y al final divides.
    
    func promedio(numeros: [Int]) -> Int {
        
        // ESCRIBE AQUÍ 👇 — hoja en blanco
        
        var promedio = 0
        for num in numeros {
            promedio = promedio + num
        }
        promedio = promedio/numeros.count
        
        return promedio
    }
    
    // ---------------------------------------------------------
    // 📝 BITÁCORA DEL RETO 14 — 20 sep 2026
    // ---------------------------------------------------------
    //
    // INTENTO 1  (ni siquiera compilaba ❌)
    //
    //     var promedio = 0
    //     for num in numeros {
    //         promedio = (numeros + num)/numeros.count
    //     }
    //     return promedio
    //
    //   Swift dijo:
    //     error: binary operator '+' cannot be applied to
    //            operands of type '[Int]' and 'Int'
    //
    //   FALLO 1 — puse la LISTA donde iba la CAJA:
    //
    //       numeros   →  la lista entera      [2, 4, 6]
    //       num       →  UN número, el de esta vuelta    4
    //       promedio  →  mi caja, lo que llevo sumado
    //
    //     "numeros + num" es sumar una lista con un número.
    //     Eso no existe. Por eso el error habla de [Int] y Int.
    //
    //     ⚠️ MISMO FALLO QUE EN EL RETO 13 (ahí puse "numero"
    //        donde iba "invertido"). El patrón que se me repite:
    //        escribo el PARÁMETRO que entra en lugar de la CAJA
    //        que estoy construyendo.
    //
    //   FALLO 2 — dividí DENTRO del for.
    //
    //     Con [2, 4, 6] y count = 3:
    //         vuelta 1:  2/3  →  promedio = 0
    //         vuelta 2:  4/3  →  promedio = 1
    //         vuelta 3:  6/3  →  promedio = 2      devolvía 2, no 4
    //
    //     Repartía de uno en uno, y cada vuelta pisaba la anterior.
    //     El promedio no se reparte por partes: primero se junta
    //     TODO y al final se reparte UNA sola vez.
    //
    //
    // INTENTO 2  (correcto ✅)
    //
    //     var promedio = 0
    //     for num in numeros {
    //         promedio = promedio + num        // dentro: solo SUMO
    //     }
    //     promedio = promedio/numeros.count    // fuera: divido
    //     return promedio
    //
    //   Salida real al correr el archivo:  4, 15, 5  ✅
    //
    //
    // 🧠 LA REGLA QUE LO ARREGLÓ
    //
    //     En un acumulador, LA CAJA APARECE A LOS DOS LADOS DEL "=".
    //     Se alimenta de sí misma:
    //
    //         caja = caja + algo
    //
    //     Si a la derecha del "=" no veo mi caja, algo está mal.
    //
    //     Y la segunda: dentro del for va lo que se repite (acumular);
    //     lo que se hace UNA sola vez (dividir) va FUERA del for.
    //
    //
    // 💬 NOTA DE ESTILO (no era error)
    //     Llamé "promedio" a la caja, pero durante el for lo que
    //     guarda dentro es una SUMA — solo se vuelve promedio en la
    //     penúltima línea. Compila igual, pero se lee mejor "suma".
    //     Los nombres son para mí, no para la máquina.
    // ---------------------------------------------------------
    
    
    // =========================================================
    // RETO 15 — ¿Está en la lista?   (DESDE CERO 🔥)
    // =========================================================
    //
    // ENUNCIADO:
    //   Recibe una lista y un número. Devuelve true si el número
    //   ESTÁ en la lista, false si no está.
    //
    // EJEMPLOS:
    //   contiene(numeros: [1, 5, 9], buscado: 5)   → true
    //   contiene(numeros: [1, 5, 9], buscado: 7)   → false
    //   contiene(numeros: [3], buscado: 3)         → true
    //
    // PISTA: es la BANDERA 🚩 del RETO 12, pero al revés.
    //   Ahí asumías true y bajabas la bandera.
    //   Aquí conviene asumir FALSE y subirla si lo encuentras.
    //
    // (Cuando lo tengas, piensa: ¿qué pasaría si en vez de la bandera
    //  pusieras un "return true" apenas lo encuentras? 🤔 Pruébalo.)
    
func contiene(numeros: [Int], buscado: Int) -> Bool {
    
    // Las llaves ya están cuadradas. Te faltan DOS líneas,
    // una en cada hueco. No toques nada más.
    
    for num in numeros {
        if num == buscado {
            
            return true// HUECO 1 👉 lo encontraste. Sal de la función YA.
            
        }
    }
    return false
}
    // HUECO 2 👉 el for terminó y nunca entró en el if.
    //            Miraste todos y ninguno era.
    
    
    
    
    // =========================================================
    // RETO 16 — Filtrar los pares a una lista nueva   (DESDE CERO 🔥)
    // =========================================================
    //
    // ENUNCIADO:
    //   Recibe una lista y devuelve una LISTA NUEVA con solo los pares.
    //
    // EJEMPLOS:
    //   soloPares(numeros: [1, 2, 3, 4])    → [2, 4]
    //   soloPares(numeros: [7, 10, 15, 20]) → [10, 20]
    //   soloPares(numeros: [1, 3, 5])       → []          (lista vacía)
    //
    // ⭐️ ESTO ES NUEVO E IMPORTANTE:
    //   Hasta hoy tu acumulador guardaba UN número o UN texto.
    //   Ahora va a guardar UNA LISTA que crece.
    //
    // SINTAXIS NUEVA — crear lista vacía y agregarle cosas:
    //
    //     var resultado: [Int] = []      // lista vacía de enteros
    //     resultado.append(7)            // ahora resultado es [7]
    //     resultado.append(9)            // ahora resultado es [7, 9]
    //
    //   "append" = "agregar al final" (se dice a-PEND).
    //
    // Es tu mismo molde de siempre: var arriba → for → if → return.
    // Lo único que cambia es que adentro del if haces .append en vez de sumar.
    
    func soloPares(numeros: [Int]) -> [Int] {
        
        var resultado: [Int] = []
            for par in numeros {
                if par % 2 == 0 {
                resultado.append(par)
            }
        }
        return resultado
    }


    // =========================================================
    // RETO 17 — Factorial   (DESDE CERO 🔥)
    // =========================================================
    //
    // ENUNCIADO:
    //   El factorial de n es multiplicar todos los números del 1 al n.
    //
    // EJEMPLOS:
    //   factorial(n: 5)   → 120     (1 × 2 × 3 × 4 × 5)
    //   factorial(n: 3)   → 6       (1 × 2 × 3)
    //   factorial(n: 1)   → 1
    //
    // ⚠️ LA TRAMPA (piénsalo bien antes de escribir):
    //   En todos tus retos anteriores arrancabas con  var suma = 0.
    //   Aquí NO puedes arrancar en 0.  ¿Por qué?
    //   Porque 0 × cualquier cosa = 0, y tu resultado siempre daría 0.
    //
    //   ¿Con qué número hay que arrancar para que multiplicar no lo arruine?
    //   Piénsalo tú. Esa es toda la dificultad del ejercicio 😉
    //
    // El resto es igual que sumarHasta (Ejercicio 4), pero multiplicando.
    
func factorial(n: Int) -> Int {
    
    // Llaves cuadradas. Te falta UNA línea, en el hueco.
    
    var suma = 1
    
    for i in 1...n {
        
        suma = suma * i

        
    }
    
    return suma
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
        // --- Prueba RETO 10 (sumar dígitos) ---
        print(sumarDigitos(numero: 123))   // debería imprimir: 6
        print(sumarDigitos(numero: 45))    // debería imprimir: 9
        print(sumarDigitos(numero: 7))     // debería imprimir: 7
        
        // --- Prueba RETO 11 (contar palabras) ---
        print(contarPalabras(texto: "hola mundo"))          // debería imprimir: 2
        print(contarPalabras(texto: "me gusta programar"))  // debería imprimir: 3
        print(contarPalabras(texto: "swift"))               // debería imprimir: 1
        
        // --- Prueba RETO 12 (es primo) ---
        print(esPrimo(numero: 7))   // debería imprimir: true
        print(esPrimo(numero: 9))   // debería imprimir: false
        print(esPrimo(numero: 1))   // debería imprimir: false
        print(esPrimo(numero: 2))   // debería imprimir: true
        
        // --- Prueba RETO 13 (invertir número) ---
        print(invertirNumero(numero: 123))   // debería imprimir: 321
        print(invertirNumero(numero: 45))    // debería imprimir: 54
        print(invertirNumero(numero: 7))     // debería imprimir: 7
        
        // --- Prueba RETO 14 (promedio) ---
        print(promedio(numeros: [2, 4, 6]))   // debería imprimir: 4
        print(promedio(numeros: [10, 20]))    // debería imprimir: 15
        print(promedio(numeros: [5]))         // debería imprimir: 5
        
        // --- Prueba RETO 15 (contiene) ---
        print(contiene(numeros: [1, 5, 9], buscado: 5))   // debería imprimir: true
        print(contiene(numeros: [1, 5, 9], buscado: 7))   // debería imprimir: false
        print(contiene(numeros: [3], buscado: 3))         // debería imprimir: true
        
        // --- Prueba RETO 16 (solo pares) ---
        print(soloPares(numeros: [1, 2, 3, 4]))      // debería imprimir: [2, 4]
        print(soloPares(numeros: [7, 10, 15, 20]))   // debería imprimir: [10, 20]
        print(soloPares(numeros: [1, 3, 5]))         // debería imprimir: []
        print(soloPares(numeros: [4, 30, 9]))        // debería imprimir: [4, 30]   ← el 4 entra sin ser múltiplo de 10; el 9 sale sin ser primo
        
        // --- Prueba RETO 17 (factorial) ---
        print(factorial(n: 5))   // debería imprimir: 120
        print(factorial(n: 3))   // debería imprimir: 6
        print(factorial(n: 1))   // debería imprimir: 1
        
    }
    
    runPlayground()
    
    
