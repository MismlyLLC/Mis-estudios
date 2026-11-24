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

func diferencia(numeros: [Int]) -> Int {
    var mayor = numeros[0]
    var menor = numeros[0]

    for numero in numeros {
        if numero > mayor {
            mayor = numero
        }
        if numero < menor {
            menor = numero
        }
    }

    return // ?
}


print(diferencia([3, 9, 1]))
print(diferencia([5, 5, 5]))
print(diferencia([10, 4, 7, 2]))


// =========================================================
// PROBLEMA 6 — ¿Cuántas veces aparece? 🔎
// =========================================================
// Enunciado:
//   Escribe una función `cuantasVeces` que reciba una lista de números
//   y un número buscado, y devuelva cuántas veces aparece ese número
//   en la lista.
//
// Ejemplos:
//   cuantasVeces([1, 2, 1, 3, 1], buscado: 1)  → 3
//   cuantasVeces([4, 5, 6], buscado: 9)        → 0
//   cuantasVeces([7, 7], buscado: 7)           → 2

// ESCRIBE AQUÍ 👇

func cuantasVeces (numeros: [Int], buscado: Int) -> (Int)

  var contador = 0

for numero in numeros {
    if numero == buscado {
        contador = contador + 1}
}

print(cuantasVeces([1, 2, 1, 3, 1], buscado: 1))
print(cuantasVeces([4, 5, 6], buscado: 9))
print(cuantasVeces([7, 7], buscado: 7))


// =========================================================
// PROBLEMA 7 — Cuenta regresiva 🚀
// =========================================================
// Enunciado:
//   Escribe una función `cuentaRegresiva` que reciba un número
//   y devuelva una lista con la cuenta desde ese número hasta 1.
//
// Ejemplos:
//   cuentaRegresiva(5)  → [5, 4, 3, 2, 1]
//   cuentaRegresiva(3)  → [3, 2, 1]
//   cuentaRegresiva(1)  → [1]
//
// Dato útil: (1...3).reversed() → 3, 2, 1

// ESCRIBE AQUÍ 👇  (rellena los ______)

func cuentaRegresiva(_ numero: Int) -> ([Int]) {
    var cuenta: [Int] = []

    for n in (1...numero).reversed() {
        cuenta.append(n)
    }

    return cuenta
}
print(cuentaRegresiva(5))
print(cuentaRegresiva(3))
print(cuentaRegresiva(1))


// =========================================================
// PROBLEMA 8 — Contar palabras 📝
// =========================================================
// Enunciado:
//   Escribe una función `contarPalabras` que reciba una frase
//   y devuelva cuántas palabras tiene.
//   (Las palabras están separadas por UN espacio.)
//
// Ejemplos:
//   contarPalabras("hola mundo")          → 2
//   contarPalabras("me gusta Swift")      → 3
//   contarPalabras("Mismly")              → 1
//
// Dato útil: " " → así se escribe un espacio

// ESCRIBE AQUÍ 👇

func contarPalabras (_ frase: String) -> (Int) {
    
    var espacios = 0
    
    for letra in frase {
        if letra == " " {
            espacios = espacios + 1 }
    }
    return espacios + 1
    }
        
    


print(contarPalabras("hola mundo"))
print(contarPalabras("me gusta Swift"))
print(contarPalabras("Mismly"))


// =========================================================
// PROBLEMA 9 — El doble de todo ✖️2
// =========================================================
// Enunciado:
//   Escribe una función `doblar` que reciba una lista de números
//   y devuelva una lista NUEVA con cada número multiplicado por 2.
//
// Ejemplos:
//   doblar([1, 2, 3])     → [2, 4, 6]
//   doblar([5, 10])       → [10, 20]
//   doblar([])            → []
//
// Dato útil: 4 * 2 → 8   (el * multiplica)

// ESCRIBE AQUÍ 👇

func doblar (_ numeros: [Int]) -> ([Int]) {
    var dobles: [Int] = []

for digito in numeros {
    dobles.append(digito * 2)
}
return dobles
}

print(doblar([1, 2, 3]))
print(doblar([5, 10]))
print(doblar([]))


// =========================================================
// PROBLEMA 10 — Cazador de mayúsculas 🔠
// =========================================================
// Enunciado:
//   Escribe una función `contarMayusculas` que reciba una frase
//   y devuelva cuántas letras MAYÚSCULAS tiene.
//
// Ejemplos:
//   contarMayusculas("Hola Mundo")     → 2
//   contarMayusculas("SWIFT")          → 5
//   contarMayusculas("sin mayusculas") → 0
//
// Dato útil: letra.isUppercase → true si la letra es mayúscula

// ESCRIBE AQUÍ 👇

func contarMayusculas (_ frase: String) -> (Int) {
    
    var mayusculasctd = 0
    
    
    for mayuscula in frase {
        if mayuscula.isUppercase == true {
             mayusculasctd = mayusculasctd + 1
        }
    }
    return mayusculasctd
}



print(contarMayusculas("Hola Mundo"))
print(contarMayusculas("SWIFT"))
print(contarMayusculas("sin mayusculas"))


// =========================================================
// PROBLEMA 11 — ¿Es múltiplo? ➗
// =========================================================
// Enunciado:
//   Escribe una función `esMultiplo` que reciba dos números
//   y devuelva true si el primero es múltiplo del segundo.
//
// Ejemplos:
//   esMultiplo(10, de: 5)  → true    (10 = 5 × 2)
//   esMultiplo(7, de: 2)   → false
//   esMultiplo(9, de: 3)   → true
//
// Dato útil: 10 % 3 → 1   (el % da el RESTO de la división)

// ESCRIBE AQUÍ 👇

func esMultiplo (_ numero1: Int,de numero2: Int) -> (Bool) {
    
    if numero1 % numero2 == 0 {
        return true
    }
    else {
        return false
    }
    
}
print(esMultiplo(10, de: 5))
print(esMultiplo(7, de: 2))
print(esMultiplo(9, de: 3))


// =========================================================
// PROBLEMA 12 — Suma de múltiplos ➕
// =========================================================
// Enunciado:
//   Escribe una función `sumarMultiplos` que reciba un límite
//   y un número, y devuelva la SUMA de todos los múltiplos de
//   ese número desde 1 hasta el límite.
//
// Ejemplos:
//   sumarMultiplos(hasta: 10, de: 3)  → 18   (3 + 6 + 9)
//   sumarMultiplos(hasta: 10, de: 5)  → 15   (5 + 10)
//   sumarMultiplos(hasta: 4, de: 7)   → 0    (ninguno)

// ESCRIBE AQUÍ 👇

func sumarMultiplos(hasta limite: Int, de numero: Int) -> Int {
    var suma = 0                       // 1. caja que acumula

    for i in 1...limite {              // 2. recorre 1, 2, 3 ... limite
        if i % numero == 0 {           // 3. ¿i es múltiplo? (lo del Problema 11)
            suma = suma + i            // 4. si sí, lo sumo a la caja
        }
    }

    return suma                        // 5. devuelvo la caja
}

print(sumarMultiplos(hasta: 10, de: 3))
print(sumarMultiplos(hasta: 10, de: 5))
print(sumarMultiplos(hasta: 4, de: 7))


// =========================================================
// PROBLEMA 13 — Sin espacios 🧹
// =========================================================
// Enunciado:
//   Escribe una función `quitarEspacios` que reciba una frase
//   y devuelva la MISMA frase pero sin ningún espacio.
//
// Ejemplos:
//   quitarEspacios("hola mundo")       → "holamundo"
//   quitarEspacios("me gusta Swift")   → "megustaSwift"
//   quitarEspacios("Mismly")           → "Mismly"
//
// Dato útil: "ho" + "la" → "hola"   (el + pega textos)

// ESCRIBE AQUÍ 👇


func quitarEspacios (_ frase: String) -> (String) {
    
    var resultado = ""
    
    for letra in frase {
        if letra != " " {
            resultado = resultado + String(letra)
        }
    }
    return resultado
}


print(quitarEspacios("hola mundo"))
print(quitarEspacios("me gusta Swift"))
print(quitarEspacios("Mismly"))


// =========================================================
// PROBLEMA 14 — Solo impares 🎯
// =========================================================
// Enunciado:
//   Escribe una función `soloImpares` que reciba una lista de números
//   y devuelva una lista NUEVA solo con los números impares.
//
// Ejemplos:
//   soloImpares([1, 2, 3, 4, 5])  → [1, 3, 5]
//   soloImpares([2, 4, 6])        → []
//   soloImpares([7, 10, 11])      → [7, 11]
//
// Dato útil: 7 % 2 → 1   (un impar siempre deja resto 1 al dividir por 2)

// ESCRIBE AQUÍ 👇

func soloImpares (_ lista: [Int]) -> ([Int]) {
    
    var listaNueva: [Int] = []
    
    for impar in lista {
        if impar % 2 == 1 {
            listaNueva.append(impar)
        }
    }
    return listaNueva
}
print(soloImpares([1, 2, 3, 4, 5]))
print(soloImpares([2, 4, 6]))
print(soloImpares([7, 10, 11]))


// =========================================================
// PROBLEMA 15 — Segundos a minutos ⏱️
// =========================================================
// Enunciado:
//   Escribe una función `convertir` que reciba una cantidad de
//   segundos y devuelva un texto con los minutos y segundos.
//


// Ejemplos:
//   convertir(125)  → "2 min 5 seg"
//   convertir(60)   → "1 min 0 seg"
//   convertir(45)   → "0 min 45 seg"
//
// Dato útil:  125 / 60 → 2    (división entera: cuántas veces cabe)
//             125 % 60 → 5    (lo que sobra)

// ESCRIBE AQUÍ 👇
func convertir (_ segundos: Int) -> (String) {
    let minutos = segundos / 60
    let resto = segundos % 60
    
    return "\(minutos) min \(resto) seg"

}


// =========================================================
// PROBLEMA 16 — El mayor de tres 🏆
// =========================================================
// Enunciado:
//   Escribe una función `mayorDeTres` que reciba tres números
//   y devuelva el más grande.
//
// Ejemplos:
//   mayorDeTres(3, 9, 5)   → 9
//   mayorDeTres(10, 2, 7)  → 10
//   mayorDeTres(4, 4, 8)   → 8

// ESCRIBE AQUÍ 👇


func mayorDeTres (_ numero1: Int, numero2: Int, numero3: Int) -> (Int) {
    
    var mayor = numero1
    
    if numero2 > mayor { mayor = numero2 }
    if numero3 > mayor { mayor = numero3 }
    return mayor
    
    
}




// =========================================================
// PROBLEMA 17 — La nota 📝
// =========================================================
// Enunciado:
//   Escribe una función `nota` que reciba un puntaje (0 a 100)
//   y devuelva una letra:
//     90 o más      → "A"
//     de 70 a 89    → "B"
//     menos de 70   → "C"
//
// Ejemplos:
//   nota(95)  → "A"
//   nota(70)  → "B"
//   nota(40)  → "C"

// ESCRIBE AQUÍ 👇

func nota (_ puntaje: Int) -> (String) {
    if puntaje >= 90 {
        return "A"
    }
    else if puntaje >= 70 {
        return "B"
    }
    else {
        return "C"
    }
}


// =========================================================
// PROBLEMA 18 — La tabla de multiplicar ✖️
// =========================================================
// Enunciado:
//   Escribe una función `tablaDel` que reciba un número y devuelva
//   una lista con su tabla del 1 al 10.
//
// Ejemplos:
//   tablaDel(3)  → [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
//   tablaDel(5)  → [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
//   tablaDel(1)  → [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// ESCRIBE AQUÍ 👇

func tablaDel (_ numero: Int) -> ([Int]) {
    
    var tabla: [Int] = []
    
    for i in 1...10 {
        tabla.append(numero * i)
    }
    return tabla
}


// =========================================================
// PROBLEMA 19 — Letras dobles 🔠
// =========================================================
// Enunciado:
//   Escribe una función `doblarLetras` que reciba una palabra y
//   devuelva otra palabra con cada letra repetida dos veces.
//
// Ejemplos:
//   doblarLetras("hola")   → "hhoollaa"
//   doblarLetras("sol")    → "ssooll"
//   doblarLetras("a")      → "aa"

// ESCRIBE AQUÍ 👇

func doblarLetras (_ palabra: String) -> (String) {
    var resultado = ""
    
    for letra in palabra {
        resultado = resultado + String(letra) + String(letra)
    }
    return resultado
}


// =========================================================
// PROBLEMA 20 — Multiplicar todo ✖️
// =========================================================
// Enunciado:
//   Escribe una función `multiplicarTodo` que reciba una lista de
//   números y devuelva el resultado de multiplicarlos todos.
//
// Ejemplos:
//   multiplicarTodo([2, 3, 4])   → 24     (2 × 3 × 4)
//   multiplicarTodo([5, 2])      → 10
//   multiplicarTodo([7])         → 7

// ESCRIBE AQUÍ 👇


func multiplicarTodo (_ lista: [Int]) -> (Int) {
    
    var resultado = 1
    
    for i in lista {
        resultado = resultado * i    }
    
    
}


// =========================================================
// PROBLEMA 21 — El promedio 📊
// =========================================================
// Enunciado:
//   Escribe una función `promedio` que reciba una lista de números
//   y devuelva su promedio (la suma dividida por cuántos números hay).
//
// Ejemplos:
//   promedio([2, 4, 6])       → 4      (12 ÷ 3)
//   promedio([10, 20])        → 15     (30 ÷ 2)
//   promedio([7])             → 7
//
// Dato útil:
//   [2, 4, 6].count  → 3

// ESCRIBE AQUÍ 👇

func promedio (_ numeros: [Int]) -> (Int) {
    
    var promedio = 0
    
    for resultado in numeros {
        promedio = promedio + resultado
    }
    return promedio / numeros.count
    
    
    
}


// =========================================================
// PROBLEMA 22 — Contar vocales 🅰️
// =========================================================
// Enunciado:
//   Escribe una función `contarVocales` que reciba una palabra
//   y devuelva cuántas vocales tiene.
//
// Ejemplos:
//   contarVocales("hola")      → 2     (o, a)
//   contarVocales("swift")     → 1     (i)
//   contarVocales("murcielago") → 5
//
// Dato útil:
//   "aeiou".contains("e")   → true
//   "aeiou".contains("s")   → false

// ESCRIBE AQUÍ 👇

func contarVocales (_ palabra: String) -> (Int) {
    var cuantasVocales = 0
    
    for vocales in palabra {
        if "aeiou".contains(vocales) {
            cuantasVocales = cuantasVocales + 1
        }
    }
    
}


// =========================================================
// PROBLEMA 23 — El más grande de la lista 🏆
// =========================================================
// Enunciado:
//   Escribe una función `mayorDeLaLista` que reciba una lista de números
//   y devuelva el número más grande.
//
// Ejemplos:
//   mayorDeLaLista([3, 9, 5])        → 9
//   mayorDeLaLista([12, 4, 7, 1])    → 12
//   mayorDeLaLista([-8, -2, -5])     → -2    (¡ojo con los negativos!)
//
// Dato útil:
//   [3, 9, 5][0]   → 3     (el primer número de la lista)
//
// Mapa 🗺️: es el P16 (mayorDeTres) + el for de P21 (promedio).

// ESCRIBE AQUÍ 👇


func mayorDeLaLista (_ numeros: [Int]) -> (Int) {
    
    var mayor = 0
    
    for numero in numeros {
        if numero > mayor {
            mayor = numero
        }
    }
    return mayor
}


// =========================================================
// PROBLEMA 24 — ¿Cuántos pasan la nota? 🎓
// =========================================================
// Enunciado:
//   Escribe una función `cuantosAprueban` que reciba una lista de notas
//   y devuelva cuántas son 4 o más (en Chile se aprueba con 4).
//
// Ejemplos:
//   cuantosAprueban([5, 3, 6, 4])     → 3     (5, 6 y 4)
//   cuantosAprueban([2, 1, 3])        → 0
//   cuantosAprueban([7, 7])           → 2
//
// Dato útil:
//   4 >= 4   → true     (">=" significa "mayor O igual")

// ESCRIBE AQUÍ 👇


func cuantosAprueban (_ listaDeNotas: [Int]) -> (Int) {
    
    var notasMayoresA4: [Int] = []
    
    for notas in listaDeNotas {
        if notas >= 4 {
            notasMayoresA4.append(notas)
        }
    }
    return notasMayoresA4.count
}


// =========================================================
// PROBLEMA 25 — Palabra al revés 🔄
// =========================================================
// Enunciado:
//   Escribe una función `alReves` que reciba una palabra
//   y la devuelva escrita al revés.
//
// Ejemplos:
//   alReves("hola")    → "aloh"
//   alReves("swift")   → "tfiws"
//   alReves("a")       → "a"
//
// Dato útil:
//   "b" + "a"   → "ba"
//   "a" + "b"   → "ab"     (el orden importa 😉)
        
// ESCRIBE AQUÍ 👇
        
func alReves (_ palabra: String) -> (String) {
    var resultado = ""
    for letras in palabra {
        resultado = String(letras) + resultado
    }
    return resultado
}
        
        
        
        
        
            
        
        
        
        
        
        
        
        
        


// =========================================================
// PROBLEMA 26 — ¿Es palíndromo? 🪞
// =========================================================
// Enunciado:
//   Escribe una función `esPalindromo` que reciba una palabra
//   y devuelva true si se lee igual al derecho y al revés.
//
// Ejemplos:
//   esPalindromo("oso")      → true
//   esPalindromo("reconocer") → true
//   esPalindromo("hola")     → false
//
// Dato útil:
//   ¡Ya tienes una función que da vuelta palabras! (P25)

// ESCRIBE AQUÍ 👇

func esPalindromo (_ palabra: String) -> (Bool) {
    let volteada = alReves(palabra)
    return palabra == volteada
    
}



// =========================================================
// PROBLEMA 27 — Eco 🔁
// =========================================================
// Enunciado:
//   Escribe una función `repetir` que reciba una palabra y un número,
//   y devuelva la palabra repetida esa cantidad de veces.
//
// Ejemplos:
//   repetir("hola", veces: 3)   → "holaholahola"
//   repetir("si", veces: 2)     → "sisi"
//   repetir("ok", veces: 0)     → ""

// ESCRIBE AQUÍ 👇

func repetir (_ palabra: String, _ numero: Int) -> (String) {
    var repetida = ""
    for _ in 0..<numero {
        repetida = repetida + palabra
    }
    return repetida
}



// =========================================================
// PROBLEMA 28 — FizzBuzz 🐝 (¡clásico de entrevistas!)
// =========================================================
// Enunciado:
//   Escribe una función `fizzBuzz` que reciba un número y devuelva:
//     • "FizzBuzz"  si es múltiplo de 3 Y de 5
//     • "Fizz"      si es múltiplo de 3
//     • "Buzz"      si es múltiplo de 5
//     • el número como texto, si no es ninguno
//
// Ejemplos:
//   fizzBuzz(9)    → "Fizz"
//   fizzBuzz(10)   → "Buzz"
//   fizzBuzz(15)   → "FizzBuzz"
//   fizzBuzz(7)    → "7"

// ESCRIBE AQUÍ 👇



func fizzBuzz (_ numero: Int) -> (String) {
    if numero % 3 == 0 && numero % 5 == 0 {
        return "FizzBuzz" }
    else if numero % 3 == 0 {
        return "Fizz" }
    else if numero % 5 == 0 {
        return "Buzz"
    }
    else {
        return String(numero)
    }
}


// =========================================================
// PROBLEMA 29 — El más chico de la lista 🐜
// =========================================================
// Enunciado:
//   Escribe una función `menorDeLaLista` que reciba una lista de números
//   y devuelva el número MÁS CHICO.
//
// Ejemplos:
//   menorDeLaLista([8, 3, 12, 5])     → 3
//   menorDeLaLista([20, 15, 30])      → 15
//   menorDeLaLista([-4, -10, 2])      → -10

// ESCRIBE AQUÍ 👇

func menorDeLaLista (_ numeros: [Int]) -> (Int) {
    
    var menor = numeros[0]
    
    for numero in numeros {
        
        if numero < menor {
            menor = numero
        }
    }
    return menor
}





// =========================================================
// PROBLEMA 30 — Solo lo positivo ☀️
// =========================================================
// Enunciado:
//   Escribe una función `sumarPositivos` que reciba una lista de números
//   y devuelva la SUMA de solo los números positivos (mayores que 0).
//   Los negativos y los ceros se ignoran.
//
// Ejemplos:
//   sumarPositivos([3, -2, 5, -1])    → 8      (3 + 5)
//   sumarPositivos([-4, -10])         → 0      (no hay positivos)
//   sumarPositivos([1, 2, 3])         → 6

// ESCRIBE AQUÍ 👇


func sumarPositivos (_ numeros: [Int]) -> (Int) {
    var suma = 0
    
    for numero in numeros {
        if numero > 0 {
            suma = suma + numero
        }
    }
    return suma
}







// =========================================================
// PROBLEMA 31 — Cazador de negativos 🧊 (el último del día)
// =========================================================
// Enunciado:
//   Escribe una función `contarNegativos` que reciba una lista de números
//   y devuelva CUÁNTOS números negativos hay (menores que 0).
//
// Ejemplos:
//   contarNegativos([3, -2, 5, -1])    → 2
//   contarNegativos([-4, -10, -7])     → 3
//   contarNegativos([1, 2, 3])         → 0

// ESCRIBE AQUÍ 👇

func contarNegativos (_ numeros: [Int]) -> (Int) {
    var cantidad = 0
    for numero in numeros {
        if numero < 0 {
            cantidad = cantidad + 1
        }
    }
    return cantidad
}


// =========================================================
// PROBLEMA 32 — El guardia exigente 🚧
// =========================================================
// Enunciado:
//   Escribe una función `contarMayores` que reciba una lista de números
//   y un número límite, y devuelva CUÁNTOS números de la lista son
//   MAYORES que ese límite.
//
// Ejemplos:
//   contarMayores([3, 8, 12, 5], que: 6)    → 2      (8 y 12)
//   contarMayores([1, 2, 3], que: 10)       → 0
//   contarMayores([20, 30, 40], que: 15)    → 3

// ESCRIBE AQUÍ 👇


func contarMayores (_ numeros: [Int],que limite: Int) -> (Int) {
    
    var numeroLimite = 0
    for mayores in numeros {
        if mayores > limite {
            numeroLimite = numeroLimite + 1
        }
    }
    return numeroLimite
    
}


// =========================================================
// PROBLEMA 33 — La lista VIP 🎟️
// =========================================================
// Enunciado:
//   Escribe una función `soloMayores` que reciba una lista de números
//   y un número límite, y devuelva una LISTA NUEVA con solo los números
//   que son MAYORES que ese límite.
//
// Ejemplos:
//   soloMayores([3, 8, 12, 5], que: 6)    → [8, 12]
//   soloMayores([1, 2, 3], que: 10)       → []
//   soloMayores([20, 30, 40], que: 15)    → [20, 30, 40]

// ESCRIBE AQUÍ 👇

func soloMayores (_ numeros: [Int], que limite: Int) -> ([Int]) {
    
    var listaMayores: [Int] = []
    
    for mayores in numeros {
        if mayores > limite {
            listaMayores.append(mayores)
        }
    }
    return listaMayores
}



// =========================================================
// PROBLEMA 34 — ¿Está en la lista? 🔍
// =========================================================
// Enunciado:
//   Escribe una función `contiene` que reciba una lista de números
//   y un número a buscar, y devuelva `true` si el número ESTÁ en la
//   lista, o `false` si no está.
//
// Ejemplos:
//   contiene([3, 8, 12, 5], al: 8)     → true
//   contiene([1, 2, 3], al: 10)        → false
//   contiene([], al: 4)                → false

// ESCRIBE AQUÍ 👇


func contiene (_ numeros: [Int], al numero: Int) -> (Bool) {
    
    for actual in numeros {
        if actual == numero {
            return true
        }
        }
    return false
}


// =========================================================
// PROBLEMA 35 — ¿En qué lugar de la fila está? 🧍‍♂️🧍‍♀️🧍
// =========================================================
// Enunciado:
//   Escribe una función `posicion` que reciba una lista de números
//   y un número a buscar, y devuelva en QUÉ POSICIÓN está.
//   ⚠️ En programación las posiciones empiezan en 0 (el primero es el 0).
//   Si el número NO está en la lista, devuelve -1.
//
// Ejemplos:
//   posicion([3, 8, 12, 5], de: 3)     → 0
//   posicion([3, 8, 12, 5], de: 12)    → 2
//   posicion([1, 2, 3], de: 10)        → -1

// ESCRIBE AQUÍ 👇

func posicion (_ numeros: [Int], de numero: Int) -> (Int) {
    
    var lugar = 0
    
    for actual in numeros {
        if actual == numero  {
            return lugar
        }
        lugar = lugar + 1
    }
    return -1
}


// =========================================================
// PROBLEMA 36 — Cazador de letras 🔤
// =========================================================
// Enunciado:
//   Escribe una función `contarLetra` que reciba una palabra y una letra,
//   y devuelva CUÁNTAS VECES aparece esa letra en la palabra.
//
// Ejemplos:
//   contarLetra("banana", letra: "a")     → 3
//   contarLetra("perro", letra: "r")      → 2
//   contarLetra("sol", letra: "x")        → 0
//
// 💡 Una letra sola en Swift es de tipo `Character` (no `String`).

// ESCRIBE AQUÍ 👇

func contarLetra (_ palabra: String, letra: Character) -> (Int) {
    
    var times = 0
    
    for letterish in palabra {
        if letterish == letra {
            times = times + 1
        }
    }
    return times
}
    


// =========================================================
// PROBLEMA 37 — El cambiador de letras 🔁🔤
// =========================================================
// Enunciado:
//   Escribe una función `reemplazar` que reciba una palabra, una letra
//   a buscar y una letra nueva, y devuelva la palabra con esa letra
//   CAMBIADA por la nueva en todos los lugares donde aparezca.
//
// Ejemplos:
//   reemplazar("banana", letra: "a", por: "o")    → "bonono"
//   reemplazar("perro", letra: "r", por: "l")     → "pello"
//   reemplazar("sol", letra: "x", por: "z")       → "sol"

// ESCRIBE AQUÍ 👇

func reemplazar (_ palabra: String, letra: Character, por: Character) -> (String) {
    
    var newWord = ""
    
    for letterish in palabra {
        if letterish == letra {
            newWord = newWord + String(por)
        }
        else {
            newWord = newWord + String(letterish)
        }
    }
    return newWord
}


// =========================================================
// PROBLEMA 38 — El rango 📏
// =========================================================
// Enunciado:
//   Escribe una función `contarEntre` que reciba una lista de números,
//   un mínimo y un máximo, y devuelva CUÁNTOS números están ENTRE
//   el mínimo y el máximo (incluyéndolos).
//
// Ejemplos:
//   contarEntre([1, 5, 8, 12, 3], desde: 3, hasta: 8)    → 3    (5, 8 y 3)
//   contarEntre([10, 20, 30], desde: 15, hasta: 25)      → 1    (20)
//   contarEntre([1, 2, 3], desde: 50, hasta: 100)        → 0

// ESCRIBE AQUÍ 👇

func contarEntre (_ numeros: [Int],desde numeroMinimo: Int,hasta numeroMaximo: Int) -> (Int) {
    
    var cantidad = 0
    for digito in numeros {
        if digito >= numeroMinimo && digito <= numeroMaximo {
            cantidad = cantidad + 1 }
    }
    return cantidad
}



// =========================================================
// PROBLEMA 39 — De punta a punta 🏔️🕳️
// =========================================================
// Enunciado:
//   Escribe una función `distancia` que reciba una lista de números
//   y devuelva la DIFERENCIA entre el número más grande y el más chico
//   (el más grande MENOS el más chico).
//
// Ejemplos:
//   distancia([3, 10, 7, 1])      → 9     (10 - 1)
//   distancia([5, 5, 5])          → 0     (5 - 5)
//   distancia([-4, 6, 2])         → 10    (6 - (-4))

// ESCRIBE AQUÍ 👇

func distancia (_ numeros: [Int]) -> (Int) {
    
    var mayor = numeros[0]
    var menor = numeros[0]
    
    for rango in numeros {
        if rango > mayor {
            mayor = rango
        }
        if  rango < menor {
            menor = rango
        }
        }
    return mayor - menor
    }





    



// =========================================================
// PROBLEMA 40 — La fotocopiadora 🖨️
// =========================================================
// Enunciado:
//   Escribe una función `multiplicar` que reciba una lista de números
//   y un número, y devuelva una LISTA NUEVA con cada número multiplicado
//   por ese número.
//
// Ejemplos:
//   multiplicar([1, 2, 3], por: 2)      → [2, 4, 6]
//   multiplicar([5, 10], por: 3)        → [15, 30]
//   multiplicar([], por: 4)             → []

// ESCRIBE AQUÍ 👇

func multiplicar (_ numeros: [Int],por numero: Int) -> ([Int]) {
    
    var listaMultiplicados: [Int] = []
    
    for digito in numeros {
        listaMultiplicados.append(digito * numero)
    }
    
    return listaMultiplicados
    
}


// =========================================================
// PROBLEMA 41 — ¿Todos pasan? 🚦
// =========================================================
// Enunciado:
//   Escribe una función `todosMayores` que reciba una lista de números
//   y un límite, y devuelva `true` si TODOS los números son mayores
//   que el límite, o `false` si al menos uno no lo es.
//
// Ejemplos:
//   todosMayores([5, 8, 12], que: 3)     → true
//   todosMayores([5, 2, 12], que: 3)     → false   (el 2 no pasa)
//   todosMayores([], que: 10)            → true

// ESCRIBE AQUÍ 👇

func todosMayores (_ numeros: [Int],que limite: Int) -> (Bool) {
    
    for digito in numeros {
        if digito <= limite {
            return false }
        else {
        }
        }
    return true
    }
    



// =========================================================
// PROBLEMA 42 — Contar pares 2️⃣
// =========================================================
// Enunciado:
//   Escribe una función `contarPares` que reciba una lista de números
//   y devuelva CUÁNTOS son pares.
//
// Ejemplos:
//   contarPares([1, 2, 3, 4, 6])   → 3
//   contarPares([1, 3, 5])         → 0
//   contarPares([])                → 0

// ESCRIBE AQUÍ 👇


func contarPares (_ numeros: [Int]) -> (Int) {
    
    var cuantosSonPares = 0
    
    for pares in numeros {
        if pares % 2 == 0 {
            cuantosSonPares = cuantosSonPares + 1
        }
    }
    return cuantosSonPares
}



// =========================================================
// PROBLEMA 43 — Sumar hasta N ➕
// =========================================================
// Enunciado:
//   Escribe una función `sumarHasta` que reciba un número N y devuelva
//   la suma de todos los números desde 1 hasta N.
//   💡 `1...n` es un rango que INCLUYE el n.
//
// Ejemplos:
//   sumarHasta(5)    → 15   (1+2+3+4+5)
//   sumarHasta(1)    → 1
//   sumarHasta(10)   → 55

// ESCRIBE AQUÍ 👇

func sumarHasta (_ numero: Int) -> (Int) {
    
    var sumaDeTodos = 0
    
    for sumatoria in 1...numero {
        
        sumaDeTodos = sumaDeTodos + sumatoria
    }
    
    return sumaDeTodos
}





// =========================================================
// PROBLEMA 44 — Solo los pares 🎯
// =========================================================
// Enunciado:
//   Escribe una función `soloPares` que reciba una lista de números
//   y devuelva una LISTA NUEVA con solo los pares.
//
// Ejemplos:
//   soloPares([1, 2, 3, 4, 6])   → [2, 4, 6]
//   soloPares([1, 3, 5])         → []

// ESCRIBE AQUÍ 👇

func soloPares (_ numeros: [Int]) -> ([Int]) {
    
    var listaPares: [Int] = []
    
    for numero in numeros {
        if numero % 2 == 0 {
            listaPares.append(numero)
        }
    }
    return listaPares
}



// =========================================================
// PROBLEMA 45 — Palabras largas 📏
// =========================================================
// Enunciado:
//   Escribe una función `contarLargas` que reciba una lista de PALABRAS
//   y un mínimo, y devuelva cuántas palabras tienen MÁS letras que ese mínimo.
//   💡 `palabra.count` te dice cuántas letras tiene.
//
// Ejemplos:
//   contarLargas(["sol", "mariposa", "casa"], que: 3)   → 2
//   contarLargas(["a", "yo"], que: 5)                  → 0

// ESCRIBE AQUÍ 👇

func contarLargas (_ listaPalabras: [String],que minimo: Int) -> (Int) {
    
    var cuantasLetras = 0
    
    for palabra in listaPalabras {
        if palabra.count > minimo {
            cuantasLetras = cuantasLetras + 1
        }
    }
    return cuantasLetras
}


// =========================================================
// PROBLEMA 46 — La palabra más larga 🐍
// =========================================================
// Enunciado:
//   Escribe una función `masLarga` que reciba una lista de palabras
//   y devuelva la que tiene MÁS letras.
//
// Ejemplos:
//   masLarga(["sol", "mariposa", "casa"])   → "mariposa"
//   masLarga(["hola", "si"])                → "hola"

// ESCRIBE AQUÍ 👇

func masLarga (_ listaPalabras: [String]) -> (String) {
    
    var palabraConMasLetras = listaPalabras[0]
    
    for palabra in listaPlabras {
        if palabra.count > palabraConMasLetras.count {
            palabraConMasLetras = palabra
        }
    }
    return palabraConMasLetras
}

// =========================================================
// PROBLEMA 47 — Sin vocales 🤐
// =========================================================
// Enunciado:
//   Escribe una función `sinVocales` que reciba una palabra y devuelva
//   la misma palabra pero SIN las vocales (a, e, i, o, u).
//
// Ejemplos:
//   sinVocales("murcielago")   → "mrclg"
//   sinVocales("sol")          → "sl"
//   sinVocales("xyz")          → "xyz"

// ESCRIBE AQUÍ 👇

func sinVocales (_ palabra: String) -> (String) {
    
    var palabraSinVocales = ""
    
    for vocales in palabra {
        if !"aeiou".contains(vocales) {
            palabraSinVocales = palabraSinVocales + String(vocales)
        }
    }
    return palabraSinVocales
}


// =========================================================
// PROBLEMA 48 — Lista al revés 🔄
// =========================================================
// Enunciado:
//   Escribe una función `invertir` que reciba una lista de números
//   y devuelva una LISTA NUEVA con los números en orden inverso.
//   💡 `lista.insert(numero, at: 0)` mete el número al PRINCIPIO.
//
// Ejemplos:
//   invertir([1, 2, 3])   → [3, 2, 1]
//   invertir([7])         → [7]
//   invertir([])          → []

// ESCRIBE AQUÍ 👇

// ⭐ IMPORTANTE — append vs insert:
//   lista.append(3)         → agrega al FINAL   [1, 2] → [1, 2, 3]
//   lista.insert(3, at: 0)  → agrega al INICIO  [1, 2] → [3, 1, 2]
//   Por eso insert(at: 0) da vuelta la lista: cada uno se cuela adelante.

func invertir (_ numeros: [Int]) -> ([Int]) {
    
    var newReversedList: [Int] = []
    
    for numbers in numeros {
        newReversedList.insert(numbers, at: 0)
    }
    return newReversedList
            
}


// =========================================================
// PROBLEMA 49 — Factorial ❗
// =========================================================
// Enunciado:
//   Escribe una función `factorial` que reciba un número N y devuelva
//   la multiplicación de todos los números desde 1 hasta N.
//
// Ejemplos:
//   factorial(4)   → 24    (1×2×3×4)
//   factorial(5)   → 120
//   factorial(1)   → 1

// ESCRIBE AQUÍ 👇




// =========================================================
// PROBLEMA 50 — ¿Todos pares? ✅
// =========================================================
// Enunciado:
//   Escribe una función `todosPares` que reciba una lista de números
//   y devuelva `true` si TODOS son pares, o `false` si hay al menos un impar.
//
// Ejemplos:
//   todosPares([2, 4, 6])   → true
//   todosPares([2, 3, 6])   → false
//   todosPares([])          → true

// ESCRIBE AQUÍ 👇




// =========================================================
// PROBLEMA 51 — Con guiones ➖ (el jefe final 👑)
// =========================================================
// Enunciado:
//   Escribe una función `conGuiones` que reciba una palabra y devuelva
//   la palabra con un guion ENTRE cada letra (¡ojo: sin guion al final!).
//
// Ejemplos:
//   conGuiones("hola")   → "h-o-l-a"
//   conGuiones("si")     → "s-i"
//   conGuiones("a")      → "a"

// ESCRIBE AQUÍ 👇


