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
