//
//  Leccion10_Retos.swift
//  Mis-estudios
//
//  LECCIÓN 10 — Retos de lógica (en paralelo a SwiftUI) 🧠
//
//  Cómo correrlo (en la Terminal):
//      swift "AI Learning/Leccion10_Retos.swift"
//


// =========================================================
// RETO 18 — La racha más larga 🔥   (sale en entrevistas)
// =========================================================
//
// ENUNCIADO:
//   Tienes los días de un hábito en una lista de Bool:
//     true  = ese día lo cumpliste ✅
//     false = ese día fallaste    ❌
//
//   Devuelve la racha MÁS LARGA de días seguidos cumplidos.
//   (¡Es justo lo que calcula tu app de 66 días!)
//
// EJEMPLOS:
//   [true, true, false, true, true, true, false]  → 3
//     (primero 2 seguidos, se corta, luego 3 seguidos → la mejor es 3)
//
//   [true, false, true]                           → 1
//   [false, false]                                → 0
//   [true, true, true, true]                      → 4
//
// 🧩 LA IDEA — ahora necesitas DOS cajas (antes usabas una):
//
//   rachaActual = cuántos días seguidos llevo AHORA MISMO
//   mejorRacha  = la racha más grande que he visto hasta ahora
//
//   Recorres los días uno por uno:
//     - Si el día es true  → la rachaActual sube 1.
//                            Y si ahora es mayor que mejorRacha,
//                            mejorRacha pasa a valer rachaActual.
//     - Si el día es false → la rachaActual vuelve a 0 (se cortó 💔)
//
//   Al final, en el return va... ¿cuál de las dos cajas? 🤔
//   (Regla de oro: en el return va la caja que llenaste con la respuesta.)
//
// 💡 PISTA de Swift: como `dia` ya es un Bool, puedes escribir
//      if dia {          ← significa "si el día es true"
//    no hace falta `if dia == true`.
//
// ⚠️ Las llaves ya están cuadradas. Solo rellena donde dice 👇

func rachaMasLarga(dias: [Bool]) -> Int {

    
    var rachaActual = 0
    var mejorRacha = 0
    // 👇 PASO 1 — crea las dos cajas (las dos empiezan en 0)

    for dia in dias {
        if dia {

            rachaActual = rachaActual + 1
            
            // 👇 PASO 3 — ¿superaste tu mejor racha? (un if con su propia llave)
            if rachaActual > mejorRacha {
                mejorRacha = rachaActual
            }

        } else {

            // 👇 PASO 4 — el día falló: la racha actual vuelve a 0
                rachaActual = 0
        }
    }

    // 👇 PASO 5 — ¿qué caja devuelves?
    return mejorRacha
}


// =========================================================
// PRUEBAS — no las toques
// =========================================================

print(rachaMasLarga(dias: [true, true, false, true, true, true, false]))  // debería imprimir: 3
print(rachaMasLarga(dias: [true, false, true]))                           // debería imprimir: 1
print(rachaMasLarga(dias: [false, false]))                                // debería imprimir: 0
print(rachaMasLarga(dias: [true, true, true, true]))                      // debería imprimir: 4


// =========================================================
// RETO 19 — La etiqueta 🏷️ (el `_` en las funciones)
// =========================================================
// Una función tiene 2 momentos:
//   🏭 CREARLA  → func nombre(etiqueta: Tipo)
//   🔘 USARLA   → nombre(etiqueta: dato)
//
// La palabra que pones al CREARLA es la que Swift te pide al USARLA.
// Si pones `_` delante, Swift NO te la pide.


// ---------------------------------------------------------
// PASO 1 — Solo LEE (ya está hecho) 👀
// ---------------------------------------------------------
// Sin `_`: al usarla hay que escribir "numero:"

func doble(numero: Int) -> Int {
    return numero * 2
}

print(doble(numero: 4))   // debería imprimir: 8


// ---------------------------------------------------------
// PASO 2 — Arregla el error 🐛
// ---------------------------------------------------------
// La prueba de abajo usa triple(4) SIN la palabra "numero:".
// Swift se va a quejar. Arréglalo cambiando SOLO la línea del `func`
// (no toques el print).

func triple(_ numero: Int) -> Int {
    return numero * 3
}

print(triple(4))          // debería imprimir: 12


// ---------------------------------------------------------
// PASO 3 — LeetCode: dos huecos, uno con `_` y otro con etiqueta
// ---------------------------------------------------------
// Cuenta cuántos números de la lista son MAYORES que el límite.
//
// Ejemplo: contarMayores([5, 12, 3, 20], limite: 10) → 2   (12 y 20)
//
// Fíjate en la línea del func:
//   `_ lista`   → al usarla NO escribes "lista:"
//   `limite`    → al usarla SÍ escribes "limite:"
//
// Es tu molde de siempre: var → for → if (+= 1) → return al final.

func contarMayores(_ lista: [Int], limite: Int) -> Int {

    var contador = 0
    // ESCRIBE AQUÍ 👇 (borra el `return 0` cuando escribas el tuyo)
    for numero in lista {
        if numero > limite {
            contador += 1
        }
    }
    return contador
}

print(contarMayores([5, 12, 3, 20], limite: 10))   // debería imprimir: 2
print(contarMayores([1, 2, 3], limite: 5))         // debería imprimir: 0
print(contarMayores([100, 50, 7], limite: 6))      // debería imprimir: 3


// =========================================================
// RETO 20 — Tu primer closure (código guardado en una caja)
// =========================================================
// Un closure es como un control remoto 📺: lo guardas en una caja,
// y el código de adentro NO se ejecuta hasta que aprietas el botón ().
//
// Ejemplo:
//   let saludar = { print("Hola") }   ← se guarda, todavía no imprime nada
//   saludar()                         ← ahora sí imprime "Hola"
//
// TU TURNO:
// 1) Crea una caja `let celebrar` con un closure que imprima "🔥 Racha!"
// 2) Llámalo DOS veces con celebrar()




// ESCRIBE AQUÍ 👇



let saludar = { print("Hola")}
saludar()
let celebrar = {print ("🔥 Racha!")}
celebrar()
celebrar()



// =========================================================
// RETO 21 — Closure que RECIBE un dato
// =========================================================
// Antes del `in` va lo que ENTRA. Después del `in`, lo que hace.
//
// Ejemplo:
//   let saludarA = { (nombre: String) in print("Hola \(nombre)") }
//   saludarA("Nicolas")    → imprime "Hola Nicolas"
//
// TU TURNO: crea `let mostrarRacha` que reciba (dias: Int)
// e imprima "🔥 Racha de \(dias) días". Llámalo con 5.

// ESCRIBE AQUÍ 👇
let mostrarRacha = {(dias: Int) in print("Racha de \(dias) días")}
mostrarRacha(66)


// =========================================================
// RETO 22 — `filter`: el closure que ELIGE
// =========================================================
// `filter` recorre la lista y se queda SOLO con los que dan `true`.
// `$0` = "el de esta vuelta" (como el `numero` de tu for).
//
// Ejemplo:
//   let notas = [3, 7, 5, 9]
//   let altas = notas.filter { $0 > 5 }    → [7, 9]
//
// Es tu molde del acumulador... ¡en UNA línea!
//
// TU TURNO: con `rachas`, crea `let largas` con las rachas MAYORES que 10.
// Imprímela. Debería salir: [12, 30, 66]

let rachas = [4, 12, 7, 30, 66, 2]

// ESCRIBE AQUÍ 👇
let largas = rachas.filter {$0 > 10}
print(rachas.filter { $0 > 10 }.count)
print(rachas.map { $0 * 10})





// =========================================================
// RETO 23 — `sorted`: el closure que ORDENA
// =========================================================
// `sorted` devuelve la lista ordenada. Le dices CÓMO con { $0 ... $1 }
// $0 = uno, $1 = el otro. ¿Va $0 antes que $1?
//
// Ejemplo:
//   [3, 1, 2].sorted { $0 < $1 }   → [1, 2, 3]   (menor primero)
//
// TU TURNO: crea `let mejores` con `rachas` de MAYOR a MENOR. Imprímela.
// Debería salir: [66, 30, 12, 7, 4, 2]

// ESCRIBE AQUÍ 👇

let mejores = rachas.sorted { $0 > $1 }

print(mejores)

// =========================================================
// RETO 24 — `guard let`: el GUARDIA de la puerta 💂
// =========================================================
// Un opcional (`String?`) puede traer algo... o venir vacío (nil).
// `guard let` revisa: si viene vacío → `return` (fuera). Si trae algo → pasa.
//
// Ejemplo:
//   func saludar(_ nombre: String?) {
//       guard let nombre = nombre else { return }
//       print("Hola \(nombre)")
//   }
//   saludar("Nicolas")   → Hola Nicolas
//   saludar(nil)         → (no imprime nada)
//
// TU TURNO: completa la línea del guard. Si `racha` viene nil, que salga.

func mostrar(racha: Int?) {
    // ESCRIBE AQUÍ 👇 (la línea del guard)
    guard let racha else { return }
    print("🔥 Racha: \(racha)")
}

mostrar(racha: 12)
mostrar(racha: nil)

// =========================================================
// RETO 25 — ENCADENAR: filter + sorted en una línea 🔗
// =========================================================
// Puedes pegar uno detrás del otro: lista.filter { ... }.sorted { ... }
// Primero filtra, y lo que queda, lo ordena.
//
// TU TURNO: crea `let top` con las rachas MAYORES que 5,
// ordenadas de MAYOR a MENOR. Imprímela.
// Debería salir: [66, 30, 12, 7]

// ESCRIBE AQUÍ 👇

var top = [Int]()
top = rachas.filter { racha in racha > 5 }.sorted { $0 < $1}.reversed()
print(top)

// =========================================================
// RETO 26 — `guard` desde cero 💂
// =========================================================
// TU TURNO: escribe la función `marcarDia(_ dia: Int)` que:
//   1. Con `guard`, si `dia` es MAYOR que 66 → return (fuera)
//   2. Si pasa, imprime "✅ Día \(dia) marcado"
//
// Prueba:
//   marcarDia(10)   → ✅ Día 10 marcado
//   marcarDia(80)   → (nada)

// ESCRIBE AQUÍ 👇
func marcarDia(_ dia: Int)
{
    guard dia <= 66 else { return }
    print("Día \(dia) marcado")
}

marcarDia(10)
marcarDia(80)




// =========================================================
// RETO 27 — `compactMap`: el filtro que BOTA los nil 🗑️
// =========================================================
// Hay listas con huecos vacíos (nil), por ejemplo datos que llegan de internet.
// `compactMap { $0 }` bota los nil y deja solo los que traen algo.
//
// Ejemplo:
//   let notas: [Int?] = [5, nil, 7]
//   notas.compactMap { $0 }   → [5, 7]
//
// TU TURNO: crea `let limpias` con `rachasConHuecos` sin los nil. Imprímela.
// Debería salir: [4, 12, 30]

let rachasConHuecos: [Int?] = [4, nil, 12, nil, 30]

print(rachasConHuecos.compactMap{ $0 })

// ESCRIBE AQUÍ 👇




// =========================================================
// RETO 28 — ARC: Swift cuenta cuántos te usan 🔢
// =========================================================
// Una `class` vive mientras ALGUIEN la apunte.
// Cuando nadie la apunta → Swift la borra sola y corre `deinit`.
//
// `deinit { }` = lo último que hace la class antes de morir.
//
// TU TURNO (2 líneas, abajo del 👇):
//   1. Crea `var miReto: Reto? = Reto()`   → debería imprimir "🟢 Reto creado"
//   2. Ponle `miReto = nil`                → debería imprimir "🗑️ Reto borrado"

class Reto {
    init()   { print("🟢 Reto creado") }
    deinit   { print("🗑️ Reto borrado") }
}

// ESCRIBE AQUÍ 👇
var miReto: Reto? = Reto()
miReto = nil




// =========================================================
// RETO 29 — DOS manos sostienen el mismo globo 🎈🤝
// =========================================================
// `var mano2 = mano1` NO hace un globo nuevo: es otra mano en el MISMO globo
// (class = reference type, como el Google Sheet compartido).
//
// TU TURNO (abajo del 👇), una línea a la vez:
//   1. var mano1: Reto? = Reto()
//   2. var mano2 = mano1
//   3. mano1 = nil
//   4. print("--- solté la mano 1 ---")
//   5. mano2 = nil
//
// ANTES DE CORRER: ¿en qué momento crees que sale "🗑️ Reto borrado"?

// ESCRIBE AQUÍ 👇
var mano1: Reto? = Reto()
var mano2 = mano1
mano1 = nil
print("--- solté la mano 1 ---")
mano2 = nil




// =========================================================
// RETO 30 — El problema: dos globos que se agarran entre sí 🎈↔🎈
// =========================================================
// Cada Globo tiene una mano (`amigo`) para agarrar a OTRO globo.
// Si A agarra a B y B agarra a A... aunque TÚ los sueltes,
// se siguen sosteniendo entre ellos → NUNCA se borran.
// Eso se llama RETAIN CYCLE (memory leak) — pregunta TÍPICA de entrevista.

class Globo {
    let nombre: String
    weak var amigo: Globo?
    init(nombre: String) { self.nombre = nombre; print("🟢 \(nombre) creado") }
    deinit { print("🗑️ \(nombre) borrado") }
}

var globoA: Globo? = Globo(nombre: "A")
var globoB: Globo? = Globo(nombre: "B")

// TU TURNO (abajo del 👇), 2 líneas: suelta los dos globos (ponles nil).
// Luego corremos y miramos: ¿salen los "🗑️ borrado"?

globoA?.amigo = globoB
globoB?.amigo = globoA

// ESCRIBE AQUÍ 👇

globoA = nil
globoB = nil




// =========================================================
// RETO 31 — Practica: Persona 🧍 y Perro 🐶 (mismo problema, otros nombres)
// =========================================================
// La persona agarra a su perro. El perro agarra a su dueño.
// → círculo de manos → retain cycle.

class Persona {
    let nombre: String
    var perro: Perro?
    init(nombre: String) { self.nombre = nombre; print("🟢 \(nombre) creada") }
    deinit { print("🗑️ \(nombre) borrada") }
}

class Perro {
    let nombre: String
    var dueño: Persona?
    init(nombre: String) { self.nombre = nombre; print("🟢 \(nombre) creado") }
    deinit { print("🗑️ \(nombre) borrado") }
}

var nico: Persona? = Persona(nombre: "Nico")
var toby: Perro? = Perro(nombre: "Toby")

nico?.perro = toby
toby?.dueño = nico

nico = nil
toby = nil

// TU TURNO: corre así primero → NO salen los "borrado" (círculo 🎈↔🎈).
// Luego arréglalo agregando UNA palabra en UNA línea de arriba.




// =========================================================
// INIT DESDE CERO — Paso 1: ¿qué es init? 🟢
// =========================================================
// init = la FICHA DE INSCRIPCIÓN: lo que necesitas para crear algo.
//
// Mira esta class. Para crear un Gato, el init pide UN dato: el nombre.

class Gato {
    let nombre: String

    init(nombre: String) {
        self.nombre = nombre
    }
}

let gato1 = Gato(nombre: "Michi")
print(gato1.nombre)

// TU TURNO (1 línea, abajo del 👇):
//   Crea `let gato2` con el nombre "Pelusa" e imprímelo (copia el molde de gato1).

// ESCRIBE AQUÍ 👇

