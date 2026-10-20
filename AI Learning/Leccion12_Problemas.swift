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
