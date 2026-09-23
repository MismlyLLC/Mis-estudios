import Foundation

// =========================================================
// REPASO DE RETORNO — después de 3 semanas sin practicar
// =========================================================
//
// Fecha: 11 de septiembre de 2026
//
// QUÉ ES ESTO:
//   Los 6 ejercicios de abajo YA LOS RESOLVISTE en la Lección 9.
//   No son nuevos. Están aquí en hoja en blanco para que los
//   vuelvas a escribir con las manos y la memoria vuelva.
//
//   Escribir > leer. Leer tu código viejo da la sensación de
//   "ah sí, claro"; escribirlo de nuevo es lo que realmente
//   lo devuelve a la memoria.
//
// CÓMO TRABAJARLO:
//   1. NO abras Leccion9_LeetCode.swift para copiar. Si te
//      atascas más de 5 minutos, pídeme una pista.
//   2. Escribe donde dice "ESCRIBE AQUÍ".
//   3. Borra la línea "return ..." del placeholder.
//   4. Descomenta las pruebas del final (quita las //).
//   5. Guarda y avísame → lo compilo y lo corremos.
//
// Van de más fácil a más difícil, y recorren los 3 moldes.
// Este archivo se compila solo, aparte del de la Lección 9.


// =========================================================
// RECORDATORIO — la chuleta 📋
// =========================================================
//
//   var x = 0           puede cambiar
//   let x = 0           constante
//
//   Tipos:  Int   String   Bool   [Int]   Character
//
//   func nombre(param: Tipo) -> TipoQueDevuelve {
//       return algo        // ⬅️ si hay ->, TIENE que haber return
//   }
//
//   if cond { ... } else if cond { ... } else { ... }
//
//   for x in lista { ... }        cada elemento
//   for letra in texto { ... }    cada letra
//   for i in 1...n { ... }        1...n  SÍ incluye n
//   for i in 0..<n { ... }        0..<n  NO incluye n
//   while cond { ... }            mientras sea cierto
//
//   %  resto     ==  compara     =  guarda     &&  y     ||  o
//
//   EL MOLDE ACUMULADOR (el que más vas a usar):
//       var caja = 0
//       for x in lista {
//           if condición {
//               caja = caja + 1
//           }
//       }
//       return caja


// =========================================================
// CALENTAMIENTO 1 — ¿Número par?          [molde: decidir]
// =========================================================
//
// ENUNCIADO:
//   Recibe un entero. Devuelve true si es PAR, false si es impar.
//
// EJEMPLOS:
//   esPar(numero: 4)  → true
//   esPar(numero: 7)  → false
//
// Es el más simple del archivo, a propósito: para arrancar el motor.
// Pista única: el operador % te dice el resto de una división.

func esPar(numero: Int) -> Bool {

    // ESCRIBE AQUÍ 👇

    return false   // ⬅️ BORRA esta línea entera
}


// =========================================================
// CALENTAMIENTO 2 — Sumar del 1 al N      [molde: acumulador]
// =========================================================
//
// ENUNCIADO:
//   Recibe un número N. Devuelve la suma de todos los
//   números del 1 hasta N (incluido).
//
// EJEMPLOS:
//   sumarHasta(n: 5)  → 15      (1+2+3+4+5)
//   sumarHasta(n: 3)  → 6
//   sumarHasta(n: 1)  → 1
//
// Primer acumulador del repaso. Aquí NO hay lista que recorrer:
// el for se inventa los números con un rango.
// ¿Cuál de los dos rangos necesitas, 1...n o 0..<n?

func sumarHasta(n: Int) -> Int {

    // ESCRIBE AQUÍ 👇

    return 0   // ⬅️ BORRA esta línea entera
}


// =========================================================
// CALENTAMIENTO 3 — Contar los pares      [molde: acumulador]
// =========================================================
//
// ENUNCIADO:
//   Recibe una lista de enteros. Devuelve CUÁNTOS son pares.
//
// EJEMPLOS:
//   contarPares(numeros: [1, 2, 3, 4, 5, 6])  → 3
//   contarPares(numeros: [7, 9, 11])          → 0
//   contarPares(numeros: [2, 4, 8])           → 3
//
// El molde acumulador completo, los 5 pasos:
// caja arriba → for → if → guardas → return.
// Ojo: devuelve CUÁNTOS hay (un conteo), no la suma de ellos.

func contarPares(numeros: [Int]) -> Int {

    // ESCRIBE AQUÍ 👇

    return 0   // ⬅️ BORRA esta línea entera
}


// =========================================================
// CALENTAMIENTO 4 — El mayor de la lista   [acumulador: extremo]
// =========================================================
//
// ENUNCIADO:
//   Recibe una lista de enteros. Devuelve el MÁS GRANDE.
//
// EJEMPLOS:
//   mayorDeLista(numeros: [3, 9, 1, 7])  → 9
//   mayorDeLista(numeros: [5, 2, 8, 8])  → 8
//   mayorDeLista(numeros: [10])          → 10
//
// Variante importante del molde: la caja NO arranca en 0.
// ¿Por qué no? Piénsalo con la lista [-5, -3, -8]:
// si arrancas en 0, ningún número sería "mayor que la caja"
// y devolverías 0, que ni siquiera está en la lista.
//
// Entonces, ¿con qué valor tiene que arrancar la caja?
// (la respuesta está en la propia lista, y se escribe
//  con corchetes: numeros[...])

func mayorDeLista(numeros: [Int]) -> Int {

    // ESCRIBE AQUÍ 👇

    return 0   // ⬅️ BORRA esta línea entera
}


// =========================================================
// CALENTAMIENTO 5 — Contar una letra      [acumulador + String]
// =========================================================
//
// ENUNCIADO:
//   Recibe un texto y una letra. Devuelve cuántas veces
//   aparece esa letra en el texto.
//
// EJEMPLOS:
//   contarLetra(texto: "banana", letra: "a")  → 3
//   contarLetra(texto: "hola",   letra: "o")  → 1
//   contarLetra(texto: "swift",  letra: "z")  → 0
//
// Mismo molde, pero el for recorre un TEXTO en vez de una lista:
//   for letra in texto { ... }   te da cada letra, una por una.
//
// Fíjate en el tipo del parámetro: Character, no String.
// Una sola letra es Character. Se comparan con == normal.

func contarLetra(texto: String, letra: Character) -> Int {

    // ESCRIBE AQUÍ 👇

    return 0   // ⬅️ BORRA esta línea entera
}


// =========================================================
// CALENTAMIENTO 6 — Sumar los dígitos      [molde: while]
// =========================================================
//
// ENUNCIADO:
//   Recibe un número y devuelve la suma de sus dígitos.
//
// EJEMPLOS:
//   sumarDigitos(numero: 123)  → 6      (1+2+3)
//   sumarDigitos(numero: 45)   → 9      (4+5)
//   sumarDigitos(numero: 7)    → 7
//
// El más difícil del repaso, y el tercer molde. Dos herramientas:
//
//   n % 10   →  te da el ÚLTIMO dígito    (123 % 10 = 3)
//   n / 10   →  BORRA el último dígito    (123 / 10 = 12)
//
// Funciona porque son Int: la división corta el decimal.
//
// Aquí NO sabes cuántas vueltas dar (depende de cuántos dígitos
// tenga el número), así que va while y no for.
//
// ⚠️ DOS TRAMPAS:
//   1. No puedes modificar "numero" directamente: un parámetro
//      es como un let. Necesitas una copia: var n = numero
//   2. Dentro del while TIENES que acercar la condición a falsa,
//      o el programa se queda colgado para siempre.

func sumarDigitos(numero: Int) -> Int {

    // ESCRIBE AQUÍ 👇

    return 0   // ⬅️ BORRA esta línea entera
}


// =========================================================
// ZONA DE PRUEBAS
// =========================================================
//
// Descomenta (quita las //) el bloque del ejercicio que termines.

func runRepaso() {

    // --- CALENTAMIENTO 1 ---
    // print(esPar(numero: 4))   // debería imprimir: true
    // print(esPar(numero: 7))   // debería imprimir: false

    // --- CALENTAMIENTO 2 ---
    // print(sumarHasta(n: 5))   // debería imprimir: 15
    // print(sumarHasta(n: 3))   // debería imprimir: 6
    // print(sumarHasta(n: 1))   // debería imprimir: 1

    // --- CALENTAMIENTO 3 ---
    // print(contarPares(numeros: [1, 2, 3, 4, 5, 6]))   // debería imprimir: 3
    // print(contarPares(numeros: [7, 9, 11]))           // debería imprimir: 0
    // print(contarPares(numeros: [2, 4, 8]))            // debería imprimir: 3

    // --- CALENTAMIENTO 4 ---
    // print(mayorDeLista(numeros: [3, 9, 1, 7]))     // debería imprimir: 9
    // print(mayorDeLista(numeros: [5, 2, 8, 8]))     // debería imprimir: 8
    // print(mayorDeLista(numeros: [10]))             // debería imprimir: 10
    // print(mayorDeLista(numeros: [-5, -3, -8]))     // debería imprimir: -3

    // --- CALENTAMIENTO 5 ---
    // print(contarLetra(texto: "banana", letra: "a"))   // debería imprimir: 3
    // print(contarLetra(texto: "hola",   letra: "o"))   // debería imprimir: 1
    // print(contarLetra(texto: "swift",  letra: "z"))   // debería imprimir: 0

    // --- CALENTAMIENTO 6 ---
    // print(sumarDigitos(numero: 123))   // debería imprimir: 6
    // print(sumarDigitos(numero: 45))    // debería imprimir: 9
    // print(sumarDigitos(numero: 7))     // debería imprimir: 7
}

runRepaso()
