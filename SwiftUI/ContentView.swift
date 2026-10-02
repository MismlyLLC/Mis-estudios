//
//  ContentView.swift
//  estudiosSwiftUI
//
//  LECCIÓN 10 — SwiftUI: la parte visual 📱
//

import SwiftUI

// =========================================================
// CÓMO FUNCIONA ESTE ARCHIVO (igual que el de LeetCode)
// =========================================================
//
//   1. Lee el enunciado y las pistas de cada ejercicio
//   2. Escribe tu código donde dice "ESCRIBE AQUÍ 👇"
//   3. Mira el resultado EN VIVO en el Canvas (panel derecho)
//   4. En el Canvas, toca la pestaña de abajo (Ejemplo /
//      Ejercicio 1 / Ejercicio 2) para ver cada uno
//
// DIFERENCIA CON LEETCODE:
//   - Aquí NO hay print ni return ni ; ni comas
//   - Solo DESCRIBES lo que se ve, uno debajo del otro
//   - Cambias algo → el Canvas se actualiza solo 🎨


// =========================================================
// TEORÍA — las 2 palabras nuevas
// =========================================================
//
//   struct XxxView: View {     ← una PANTALLA (o pedazo de ella)
//       var body: some View {  ← "body" = lo que se ve (siempre se llama body)
//           ...aquí va lo que aparece...
//       }
//   }
//
// LOS MODIFICADORES (lo más característico de SwiftUI):
//   Le pegas puntos a un elemento para cambiarle cosas.
//   Se leen de arriba hacia abajo, como una receta:
//
//     Text("Hola")
//         .font(.largeTitle)          // ...grande
//         .bold()                     // ...en negrita
//         .foregroundStyle(.orange)   // ...naranjo
//
// CONTENEDORES:
//   VStack = apila elementos UNO ENCIMA DE OTRO ↕️
//   HStack = los pone UNO AL LADO DEL OTRO ↔️
//   spacing: 12  → separación entre elementos


// =========================================================
// EJEMPLO RESUELTO — míralo, no lo edites ✅
// =========================================================

struct EjemploView: View {
    var body: some View {
        VStack(spacing: 12) {

            Image(systemName: "flame.fill")
                .font(.system(size: 80))
                .foregroundStyle(.orange)

            Text("Hello, I'm Jhon Doe")
                .font(.largeTitle)
                .bold()

            Text("Estoy aprendiendo Swift")
                .font(.body)
                .foregroundStyle(.secondary)

        }
        .padding()
    }
}


// =========================================================
// EJERCICIO 1 — Tu tarjeta de presentación   (HOJA EN BLANCO 🔥)
// =========================================================
//
// ENUNCIADO:
//   Arma tu propia tarjeta dentro del VStack. Debe tener:
//     1. Un ícono que te represente
//     2. Tu nombre en grande y negrita
//     3. Una línea abajo con lo que haces
//
// SINTAXIS QUE NECESITAS:
//     Text("lo que sea")
//         .font(.largeTitle)          // .largeTitle .title .headline .body .caption
//         .bold()
//         .foregroundStyle(.blue)     // .red .green .orange .purple .secondary
//
//     Image(systemName: "star.fill")
//         .font(.system(size: 60))
//         .foregroundStyle(.orange)
//
// ÍCONOS para elegir (entre comillas, tal cual):
//     "star.fill"   "flame.fill"   "bolt.fill"   "hammer.fill"
//     "person.fill" "laptopcomputer"  "graduationcap.fill"  "mountain.2.fill"
//
// 💡 Cambia UNA cosa, mira el Canvas, cambia otra. Así se aprende.

struct Ejercicio1View: View {
    var body: some View {
        VStack(spacing: 12) {

            // ESCRIBE AQUÍ 👇 — borra este Text y arma tu tarjeta
            Image(systemName:"graduationcap.fill")
                .font(.system(size: 60))
                .foregroundStyle(.orange)
            
            Text("Jhon Doe")
                .font(.largeTitle)
                .bold()
            
            Text("Aprendiendo Swift")
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}


// =========================================================
// EJERCICIO 2 — El contador   (con guía)
// =========================================================
//
// ⭐️ CONCEPTO NUEVO Y CLAVE: @State
//
//   Para que un valor pueda CAMBIAR y la pantalla se REDIBUJE
//   sola, la variable lleva @State adelante:
//
//       @State private var contador = 0
//
//   Traducción: "este número puede cambiar, y cuando cambie,
//   vuelve a dibujar la pantalla automáticamente". Esa es TODA
//   la magia de SwiftUI.
//
// EL BOTÓN:
//       Button("Sumar") {
//           contador = contador + 1     // ← corre AL TOCARLO
//       }
//
//   Entre las llaves va la acción. ¡Y ahí adentro SÍ es el Swift
//   normal que ya sabes! (if, for, sumas... todo igual).
//
// TU TAREA (3 pasos):
//   1. Que el Text muestre el contador → Text("\(contador)")
//        ⚠️ El \(  ) se llama INTERPOLACIÓN: mete un número en un texto.
//   2. Completar la acción del botón "Sumar" (que suba de a 1)
//   3. Agregar TÚ un segundo botón "Reiniciar" que lo vuelva a 0

struct Ejercicio2View: View {

    @State private var contador = 0

    var body: some View {
        VStack(spacing: 20) {

            Text("Contador")
                .font(.headline)
                .foregroundStyle(.secondary)

            // TAREA 1 👇 — haz que muestre el contador de verdad
            Text("\(contador)")
                .font(.system(size: 70))
                .bold()

            // TAREA 2 👇 — completa la acción del botón
            Button("Sumar") {
                contador = contador + 1
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)

            // TAREA 3 👇 — escribe aquí abajo el botón "Reiniciar" completo

            Button("Reiniciar") {
                contador = 0
            }
            .font(.title2)
            .buttonStyle(.bordered)

        }
        .padding()
    }
}


// =========================================================
// EJERCICIO 3 — Lista de hábitos   (con guía)
// =========================================================



//
// ⭐️ CONCEPTO NUEVO: ForEach — el `for` que DIBUJA
//
//   En la Lección 9 usabas el for para ACUMULAR:
//
//       for habito in habitos {
//           contador = contador + 1      // ← guardas algo
//       }
//
//   En SwiftUI el for sirve para DIBUJAR una vista por cada
//   elemento de la lista. Se llama ForEach y se escribe así:
//
//       ForEach(habitos, id: \.self) { habito in
//           Text(habito)                 // ← dibujas algo
//       }
//
//   Misma idea de siempre: recorre la lista, y por cada vuelta
//   hace algo con el elemento. Lo único que cambia es QUÉ hace:
//   antes guardaba en una caja, ahora pinta una fila.
//
// 🔍 LAS TRES PARTES del ForEach:
//
//       ForEach( habitos , id: \.self ) { habito in
//                  ↑          ↑            ↑
//              la lista    ver abajo   el de esta vuelta
//                                      (como el "num" del for)
//
//   El `id: \.self` le dice a SwiftUI cómo distinguir una fila
//   de otra. Con textos sueltos se usa \.self y ya está — no te
//   pelees con eso ahora, más adelante se entiende solo.
//
// ⚠️ OJO — la diferencia con el for normal:
//   Dentro de un ForEach NO se escribe `return` ni se acumula
//   nada. Solo se ponen vistas: Text, Image, HStack... Lo que
//   escribas ahí se dibuja, tal cual.
//
// 📦 List = la lista con estilo de iOS (separadores, scroll,
//   fondo). Es lo que ves en Ajustes, en Mail, en cualquier app.
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — Dentro del List, escribe el ForEach que recorra
//            `habitos` y dibuje un Text con cada hábito.
//            Las llaves del List ya están puestas.
//
//   PASO 2 — Cuando el paso 1 funcione y veas las 5 filas,
//            cambia el Text por una fila más bonita. Envuelve
//            en un HStack y añade un icono delante:
//
//                HStack {
//                    Image(systemName: "circle")
//                        .foregroundStyle(.orange)
//                    Text(habito)
//                }
//
//            (HStack = poner cosas en HORIZONTAL, una al lado
//             de otra. VStack las pone en vertical, como en el
//             Ejercicio 1.)
//
// 💡 Haz el PASO 1 primero y mira el Canvas. Solo después el 2.

struct Ejercicio3View: View {

    let habitos = ["Leer 10 páginas",
                   "Estudiar Swift",
                   "Caminar 30 min",
                   "Beber agua",
                   "Dormir 8 horas"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(habitos, id: \.self) { habito in
                    HStack {
                        Image(systemName: "circle")
                            .foregroundStyle(.orange)
                        Text(habito)
                    }
                    
                    
                }
            }
            .navigationTitle("Mis hábitos")
            }
        }
    }


// =========================================================
// EJERCICIO 4 — Hábitos con datos de verdad   (con guía)
// =========================================================
//
// 🤔 EL PROBLEMA del Ejercicio 3:
//   Cada hábito era SOLO un texto: "Leer 10 páginas".
//   Pero un hábito real tiene más cosas: un nombre, un ícono,
//   una racha de días... ¿Dónde guardamos todo eso junto?
//
// ⭐️ LA RESPUESTA: un struct (¡ya lo viste en la Lección 7!)
//
//   Un struct es un MOLDE para una ficha con varios datos:
//
//       struct Habito {
//           let nombre: String      // "Leer"
//           let icono: String       // "book.fill"
//           let racha: Int          // 12
//       }
//
//   Y creas fichas con ese molde así:
//
//       Habito(nombre: "Leer", icono: "book.fill", racha: 12)
//
//   Para sacar UN dato de la ficha, usas el punto:
//       habito.nombre   → "Leer"
//       habito.racha    → 12
//
// ⭐️ CONCEPTO NUEVO: Identifiable
//
//   ¿Te acuerdas del `id: \.self` que te dije que no pelearas?
//   Ahora se entiende: SwiftUI necesita saber cuál fila es cuál
//   (para animar, borrar, etc.). Con textos usaba el texto mismo.
//   Pero dos hábitos podrían llamarse igual... 🤷
//
//   Solución: cada ficha lleva su propio número de carnet único.
//
//       struct Habito: Identifiable {    ← "promete tener un id"
//           let id = UUID()              ← UUID() inventa uno único solo
//           ...
//       }
//
//   Ese `: Identifiable` es un PROTOCOLO (Lección 8): una promesa.
//   Y como ya cumple la promesa, el ForEach queda más corto:
//
//       ForEach(habitos) { habito in     ← ¡ya no va el id: \.self!
//
// 🎤 PREGUNTA TÍPICA DE ENTREVISTA:
//   "¿Para qué sirve Identifiable?" → "Para que SwiftUI pueda
//   distinguir cada elemento de una lista con un id único."
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — Completa el struct `Habito` de abajo: le faltan
//            los campos `icono` (String) y `racha` (Int).
//            ⚠️ Hasta que no lo hagas, Xcode marcará error en la
//            lista `habitos` — ¡es normal! Le estás pidiendo
//            fichas con datos que el molde aún no tiene.
//
//   PASO 2 — Dentro del ForEach, arma la fila. Debe verse así:
//
//            📖  Leer 10 páginas              🔥 12
//
//            Piezas que necesitas (dentro de un HStack):
//              - Image(systemName: habito.icono)  en naranjo
//              - Text(habito.nombre)
//              - Spacer()          ← empuja lo que sigue a la derecha
//              - Text("🔥 \(habito.racha)")
//
// 💡 Truco de llaves: al escribir `HStack {` escribe YA la `}`
//    y después rellena el medio.

struct Habito: Identifiable {
    let id = UUID()
    let nombre: String
    let icono: String
    let racha: Int
    // PASO 1 👇 — agrega aquí `icono` y `racha`
}

struct Ejercicio4View: View {

    let habitos = [
        Habito(nombre: "Leer 10 páginas", icono: "book.fill",     racha: 12),
        Habito(nombre: "Estudiar Swift",  icono: "laptopcomputer", racha: 30),
        Habito(nombre: "Caminar 30 min",  icono: "figure.walk",    racha: 5),
        Habito(nombre: "Beber agua",      icono: "drop.fill",      racha: 21),
        Habito(nombre: "Dormir 8 horas",  icono: "bed.double.fill", racha: 3)
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(habitos) { habito in
                    HStack {
                        Image(systemName: habito.icono)
                            .foregroundStyle(.orange)
                        Text(habito.nombre)
                        Spacer()
                        Text("🔥\(habito.racha)")
                    }
                }
            }
            .navigationTitle("Mis rachas")
        }
    }
}


// =========================================================
// EJERCICIO 5 — Tocar una fila y abrir el detalle   (con guía)
// =========================================================
//
// 🎯 ESTO ES LO QUE PIDEN EN LAS PRUEBAS TÉCNICAS:
//   Una lista → tocas una fila → se abre otra pantalla con
//   toda la info de ese elemento. Es lo que hace Ajustes,
//   Mail, Contactos... todas las apps.
//
// ⭐️ CONCEPTO NUEVO: NavigationLink — una fila que se puede tocar
//
//   Tiene DOS partes, cada una con sus llaves:
//
//       NavigationLink {
//           PantallaDestino()      ← A DÓNDE vas al tocarla
//       } label: {
//           Text("Tócame")         ← LO QUE SE VE en la lista
//       }
//
//   (Solo funciona dentro de un NavigationStack — ya lo tienes.)
//
// ⭐️ PASAR DATOS A OTRA PANTALLA
//
//   La pantalla de detalle necesita saber QUÉ hábito mostrar.
//   ¿Te acuerdas de la máquina de la Lección 9? Los datos ENTRAN
//   por el paréntesis. Una pantalla funciona igual:
//
//       struct DetalleView: View {
//           let habito: Habito        ← "para funcionar, necesito un hábito"
//           ...
//       }
//
//       DetalleView(habito: habito)   ← "toma, aquí tienes este hábito"
//
//   Es exactamente como llamar a una función: esPar(numero: 4).
//
// 🎤 PREGUNTA TÍPICA DE ENTREVISTA:
//   "¿Cómo pasas datos de una pantalla a otra en SwiftUI?"
//   → "Por el inicializador: la pantalla de detalle declara una
//      propiedad (let habito: Habito) y se la paso al crearla."
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — Dentro del VStack de `DetalleView`, dibuja:
//              - Image(systemName: habito.icono)
//                  con .font(.system(size: 80)) y en naranjo
//              - Text(habito.nombre)  en .largeTitle y .bold()
//              - Text("🔥 \(habito.racha) días seguidos")
//            (¡Es igual a tu tarjeta del Ejercicio 1! Solo que
//             ahora los datos salen de `habito.` en vez de ir fijos.)
//
//   PASO 2 — En la lista, completa el DESTINO del NavigationLink:
//            una sola línea que cree DetalleView y le pase el
//            hábito de esta vuelta.
//
// 💡 Toca la pestaña "Ejercicio 5" en el Canvas y luego toca una
//    fila. Si el Canvas no deja tocar, pulsa el botón ▶️ (Live)
//    que aparece arriba del Canvas.

struct DetalleView: View {

    let habito: Habito

    var body: some View {
        VStack(spacing: 16) {

            // PASO 1 👇 — ícono grande, nombre y racha
            Image(systemName: habito.icono)
                .font(.system(size: 80))
                .foregroundStyle(.orange)
            
            Text(habito.nombre)
                .font(.largeTitle)
                .bold()
            
            Text("🔥 \(habito.racha) dias seguidos")
        }
        .padding()
    }
}

struct Ejercicio5View: View {

    let habitos = [
        Habito(nombre: "Leer 10 páginas", icono: "book.fill",      racha: 12),
        Habito(nombre: "Estudiar Swift",  icono: "laptopcomputer",  racha: 30),
        Habito(nombre: "Caminar 30 min",  icono: "figure.walk",     racha: 5),
        Habito(nombre: "Beber agua",      icono: "drop.fill",       racha: 21),
        Habito(nombre: "Dormir 8 horas",  icono: "bed.double.fill", racha: 3)
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(habitos) { habito in
                    NavigationLink {

                        DetalleView(habito: habito)
                    } label: {
                        HStack {
                            Image(systemName: habito.icono)
                                .foregroundStyle(.orange)
                            Text(habito.nombre)
                            Spacer()
                            Text("🔥 \(habito.racha)")
                        }
                    }
                }
            }
            .navigationTitle("Mis hábitos")
        }
    }
}


// =========================================================
// EJERCICIO 6 — Agregar hábitos nuevos   (con guía)
// ========================================================
//










// 🎯 LA IDEA: escribes un hábito en una cajita de texto, tocas
//   "Agregar" y aparece en la lista. ¡La pantalla reacciona a ti!
//
// ⭐️ REPASO: @State (lo usaste en el contador del Ejercicio 2)
//
//   Antes era un número:      @State private var contador = 0
//   Ahora es una LISTA:       @State private var habitos = [...]
//   y un TEXTO:               @State private var nuevoHabito = ""
//
//   Misma magia: cuando cambian, la pantalla se redibuja sola.
//
// ⭐️ CONCEPTO NUEVO: TextField — la cajita donde el usuario escribe
//
//       TextField("Escribe un hábito", text: $nuevoHabito)
//                  ↑                         ↑
//           texto gris de ayuda        dónde se GUARDA lo escrito
//
//   🤔 ¿Y ese signo $ ?
//     nuevoHabito   → solo LEES lo que hay en la caja
//     $nuevoHabito  → le das a la cajita permiso para ESCRIBIR ahí
//
//   Cada letra que teclea el usuario entra directo a `nuevoHabito`.
//   El $ se llama "binding" (enlace): une la cajita con la variable.
//
// ⭐️ AGREGAR A UNA LISTA: ¡ya lo sabes de la Lección 5!
//
//       habitos.append(nuevoHabito)     ← mete el texto al final
//
// 🎤 PREGUNTA TÍPICA DE ENTREVISTA:
//   "¿Qué significa el $ en SwiftUI?"
//   → "Es un Binding: le permite a otra vista (como un TextField)
//      leer Y modificar una variable @State."
//
//
// TU TAREA (3 pasos):
//
//   PASO 1 — Escribe el TextField conectado a `$nuevoHabito`.
//            Después pégale el modificador .textFieldStyle(.roundedBorder)
//            para que se vea como cajita con borde.
//
//   PASO 2 — Dentro de la acción del botón "Agregar":
//              a) agrega `nuevoHabito` a la lista `habitos`
//              b) deja `nuevoHabito` vacío otra vez → nuevoHabito = ""
//                 (así la cajita se limpia sola, como en WhatsApp)
//
//   PASO 3 (bonus) — Si tocas "Agregar" con la cajita vacía, ¡se
//            agrega una fila vacía! 😅 Arréglalo: envuelve lo del
//            PASO 2 en un if que solo agregue si nuevoHabito != ""
//            (!= significa "distinto de", el primo de ==)
//
// 💡 Para escribir en el Canvas: pulsa ▶️ arriba del Canvas, o usa
//    la pestaña "Ejercicio 6" que aparece ARRIBA del Canvas.

struct Ejercicio6View: View {

    @State private var habitos = ["Leer 10 páginas", "Estudiar Swift"]
    @State private var nuevoHabito = ""
    
    var body: some View {
        NavigationStack {
            VStack {

                HStack {

                    // PASO 1 👇 — el TextField va aquí
                    TextField("Escribe un hábito", text: $nuevoHabito)
                        .textFieldStyle(.roundedBorder)
                    Button("Agregar") {
                        
                        if nuevoHabito != "" {
                            habitos.append(nuevoHabito)
                            nuevoHabito = ""
                        }

                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                
                List {
                    ForEach(habitos, id: \.self) { habito in
                        HStack {
                            Image(systemName: "circle")
                                .foregroundStyle(.orange)
                            Text(habito)
                        }
                    }
                }
            }
            .navigationTitle("Nuevo hábito")
        }
    }
}

#Preview("Ejercicio 6") {
    Ejercicio6View()
}



// =========================================================
// EJERCICIO 7 — Leer datos en JSON   (con guía)
// =========================================================
//
// 🎯 LO QUE PIDEN EN LAS PRUEBAS TÉCNICAS:
//   En una app real, la lista NO la escribes tú a mano. Llega
//   desde internet en un formato de texto llamado JSON. Así:
//
//       [
//         {"id": 1, "nombre": "Leer 10 páginas", "icono": "book.fill", "racha": 12},
//         {"id": 2, "nombre": "Estudiar Swift",  "icono": "laptopcomputer", "racha": 30}
//       ]
//
//   Fíjate: se parece MUCHO a tu struct Habito del Ejercicio 4.
//   [ ] = una lista        { } = una ficha
//   "nombre": "Leer"  = campo nombre, con su valor
//
// ⭐️ CONCEPTO NUEVO: Codable — el traductor 🔄
//
//   El JSON es solo TEXTO. Swift no puede usar texto como si
//   fuera un struct. Necesita un traductor:
//
//       JSON (texto)  ──Codable──▶  [HabitoJSON] (fichas de Swift)
//
//   Para activar el traductor, al struct le pones `: Codable`.
//   Es otro PROTOCOLO (otra promesa), igual que Identifiable.
//   Puedes poner varias promesas separadas por coma:
//
//       struct HabitoJSON: Codable, Identifiable { ... }
//
// ⚠️ LA ÚNICA REGLA (y la más importante):
//   Los nombres de los campos del struct tienen que ser
//   EXACTAMENTE IGUALES a los del JSON. Letra por letra.
//
//       JSON:    "nombre": "Leer"
//       struct:  let nombre: String     ✅ se traduce
//       struct:  let nombreHabito: String  ❌ el traductor no lo encuentra
//
// 🎤 PREGUNTA TÍPICA DE ENTREVISTA:
//   "¿Para qué sirve Codable?"
//   → "Para convertir JSON en structs de Swift (y al revés)
//      automáticamente, sin leer el texto a mano."
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — Completa el struct `HabitoJSON`. Ya tiene el `id`.
//            Mira el JSON de abajo y agrega los 3 campos que
//            faltan, con los MISMOS nombres y el tipo correcto:
//              - texto con comillas  → String
//              - número sin comillas → Int
//
//   PASO 2 — En la lista, arma la fila igual que en el Ejercicio 4:
//              ícono naranjo + nombre + Spacer() + "🔥 racha"
//
// 💡 Si ves la lista vacía: revisa que los nombres del struct
//    coincidan letra por letra con los del JSON.

// 📄 El JSON (en el Ejercicio 8 vendrá de internet) — no lo toques
let jsonDeEjemplo = """
[
  {"id": 1, "nombre": "Leer 10 páginas", "icono": "book.fill",       "racha": 12},
  {"id": 2, "nombre": "Estudiar Swift",  "icono": "laptopcomputer",  "racha": 30},
  {"id": 3, "nombre": "Caminar 30 min",  "icono": "figure.walk",     "racha": 5},
  {"id": 4, "nombre": "Beber agua",      "icono": "drop.fill",       "racha": 21}
]
"""

struct HabitoJSON: Codable, Identifiable {
    let id: Int
    // PASO 1 👇 — agrega aquí los 3 campos que faltan
    let nombre: String
    let icono: String
    let racha: Int
    
    
}

// 🔄 El traductor en acción — no lo toques (lo explico en el chat)
func traducirJSON() -> [HabitoJSON] {
    let datos = Data(jsonDeEjemplo.utf8)
    let habitos = try? JSONDecoder().decode([HabitoJSON].self, from: datos)
    return habitos ?? []
}

struct Ejercicio7View: View {

    let habitos = traducirJSON()

    var body: some View {
        NavigationStack {
            List {
                ForEach(habitos) { habito in
                    // PASO 2 👇 — arma la fila aquí (HStack)
                    //
                    // 🧠 CÓMO SABER QUÉ CAMPO VA EN CADA PIEZA
                    //   ⚠️ `icono` y `nombre` son los DOS String → el tipo
                    //      NO sirve para distinguirlos. Pregúntale a la
                    //      pieza: "¿qué MUESTRAS?"
                    //
                    //   PIEZA          ¿QUÉ MUESTRA?    CAMPO           TIPO
                    //   ─────────────  ───────────────  ──────────────  ──────
                    //   Image 🖼️       un DIBUJO        habito.icono    String  → "book.fill" (nombre de un dibujo)
                    //   Text 📝        PALABRAS         habito.nombre   String  → "Leer 10 páginas"
                    //   Text("🔥") 🔢  un NÚMERO        habito.racha    Int     → 12
                    //
                    //   🎨 Pareja fácil: Image ↔ icono (los dos son "dibujo")
                    //   🔢 racha es Int, pero Text solo muestra texto →
                    //      por eso va dentro de \( ): 12 → "🔥 12"
                    //
                    HStack {
                        Image(systemName: habito.icono)
                            .foregroundStyle(.orange)
                        Text(habito.nombre)
                        Spacer()
                        Text("🔥 llevas \(habito.racha) días seguidos de racha")
                    }
                }
            }
            .navigationTitle("Desde JSON")
        }
    }
}

#Preview("Ejercicio 7") {
    Ejercicio7View()
}



// =========================================================
// EJERCICIO 8 — Descargar datos de INTERNET 🌐   (con guía)
// =========================================================
//
// 🎯 ESTA ES LA PRUEBA TÉCNICA TÍPICA DE iOS:
//   "Descarga una lista de esta API y muéstrala en pantalla."
//
//   En el Ejercicio 7 el JSON estaba escrito en tu archivo.
//   Ahora lo vas a pedir a una API de verdad, en internet:
//
//       Ah
//
//   (Es una API gratis para practicar. Ábrela en Safari y mira
//    lo que devuelve: ¡es JSON!)
//
//   Cada ficha que llega se ve así:
//
//       {"userId": 1, "id": 1, "title": "delectus aut autem", "completed": false}
//
//   🆕 `completed` es `false` → ni texto ni número: es un Bool
//      (verdadero/falso). Solo puede valer true o false.
//
//   🆕 El JSON trae `userId` y tú NO lo vas a usar. No pasa nada:
//      si no lo pones en el struct, el traductor lo ignora. Solo
//      se traducen los campos que tú declaras.
//
// ⭐️ CONCEPTO NUEVO: async / await — "esperar sin congelar" ⏳
//
//   Descargar de internet TARDA (medio segundo, 3 segundos...).
//   Si la app se quedara quieta esperando, la pantalla se
//   congelaría. 🥶
//
//   Analogía: pides un café ☕. No te quedas mirando la máquina:
//   te dan un número, te sientas, y cuando está listo te llaman.
//
//       async  → "esta función TARDA" (va en la definición)
//       await  → "aquí espero el café" (va donde se espera)
//
// ⭐️ CONCEPTO NUEVO: .task { } — "al aparecer la pantalla, haz esto"
//
//       List { ... }
//       .task {
//           tareas = await descargarTareas()
//       }
//
//   Se pega a la vista como cualquier modificador, y corre
//   UNA vez, cuando la pantalla aparece.
//
// 🎤 PREGUNTAS TÍPICAS DE ENTREVISTA:
//   "¿Cómo descargas datos en Swift?"
//   → "Con URLSession.shared.data(from: url) usando async/await,
//      y decodifico el JSON con JSONDecoder a un struct Codable."
//
//   "¿Qué hace await?"
//   → "Pausa esa función hasta que llegue el resultado, sin
//      bloquear la pantalla."
//
//
// TU TAREA (3 pasos):
//
//   PASO 1 — Completa el struct `Tarea`: agrega `title` y
//            `completed`, con los nombres EXACTOS del JSON.
//              - texto con comillas  → String
//              - true / false        → Bool
//
//   PASO 2 — Pega el modificador `.task { }` a la List (después
//            de su `}`), y adentro guarda en `tareas` lo que
//            devuelve `await descargarTareas()`.
//
//   PASO 3 — Arma la fila: el título de la tarea con Text.
//            (Bonus: si `tarea.completed` es true, muestra además
//             Image(systemName: "checkmark.circle.fill") en verde.)
//
// 💡 Al principio la lista sale vacía y un instante después
//    aparecen las tareas: ¡eso es la descarga! 🌐

struct Tarea: Codable, Identifiable {
    let id: Int
    // PASO 1 👇 — agrega `title` y `completed`
    let title: String
    let completed: Bool
}



// 🌐 La máquina que descarga — no la toques (la explico en el chat)
func descargarTareas() async -> [Tarea] {
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos?_limit=10")!
    do {
        // 1. Pedir el JSON a internet y ESPERAR (await) a que llegue
        let (datos, _) = try await URLSession.shared.data(from: url)

        // 2. Traducirlo, igual que en el Ejercicio 7
        let tareas = try JSONDecoder().decode([Tarea].self, from: datos)
        return tareas
    } catch {
        return []
    }
}

struct Ejercicio8View: View {

    @State private var tareas: [Tarea] = []   // empieza vacía

    var body: some View {
        NavigationStack {
            List {
                ForEach(tareas) { tarea in

                    // PASO 3 👇 — arma la fila aquí

                    HStack{
                        Text(tarea.title)
                    }
                    
                }
            }
            // PASO 2 👇 — pega aquí el .task { }

            .navigationTitle("Desde internet")
            .task {
                tareas = await descargarTareas()
            }
            .overlay {
                if tareas.isEmpty {
                    ContentUnavailableView("Sin Conexión",
                                           systemImage: "wifi.slash",
                                           description: Text("Revisa tu internet e intenta de nuevo"))
                }
            }
        }
    }
}

#Preview("Ejercicio 8") {
    Ejercicio8View()
}



// =========================================================
// EJERCICIO 9 — HOJA EN BLANCO 🔥   (sin guía, como en una entrevista)
// =========================================================
//
// ENUNCIADO:
//   Descarga la lista de usuarios de esta API y muéstrala:
//
//       https://jsonplaceholder.typicode.com/users
//
//   (Ábrela en Safari primero y mira qué trae.)
//
//   Cada usuario trae MUCHAS cosas, pero tú solo necesitas 3:
//
//       {"id": 1, "name": "Leanne Graham", "email": "Sincere@april.biz", ...}
//
//   Todo lo demás (address, phone, company...) → ignóralo. Si no
//   lo pones en tu struct, el traductor lo salta solo.
//
// RESULTADO ESPERADO (pestaña "Ejercicio 9"):
//
//       Usuarios
//       ─────────────────────────
//       Leanne Graham
//       Sincere@april.biz          ← el email más chico y gris
//       ─────────────────────────
//       Ervin Howell
//       Shanna@melissa.tv
//       ...10 usuarios
//
// LAS 3 PIEZAS QUE NECESITAS (escríbelas en este orden):
//   1. Un struct para UN usuario (Codable + Identifiable)
//   2. Una función async que descargue y traduzca
//   3. La vista: lista + ForEach + .task
//
// 🚦 REGLAS:
//   - Intenta SIN mirar el Ejercicio 8.
//   - Si te bloqueas más de 2 minutos en una pieza, mira el
//     Ejercicio 8 SOLO para esa pieza y vuelve aquí.
//   - Nombres: inventa los tuyos (Usuario, usuarios, descargarUsuarios...)
//
// 💡 Pista de diseño: para el nombre arriba y el email abajo,
//    ¿VStack o HStack? 🤔 Y para que el email se vea chico y gris:
//    .font(.caption) y .foregroundStyle(.secondary)

// PIEZA 1 👇 — el struct
struct Usuario: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
// PIEZA 2 👇 — la función que descarga
func part2() async -> [Usuario] {
    let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    
    do {
        let (datos, _) = try await
        URLSession.shared.data(from: url)
        let usuarios = try
        JSONDecoder().decode([Usuario].self, from: datos)
        return usuarios
    } catch {
        return []
    }
}
// PIEZA 3 👇 — la vista (borra el Text de adentro y arma la tuya)

struct Ejercicio9View: View {
    
    @State private var usuarios: [Usuario] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(usuarios) { usuario in
                    VStack(alignment: .leading) {
                        Text(usuario.name)
                        Text(usuario.email)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Usuarios")
            .task {
                usuarios = await part2()
                    }}
            }
        }

#Preview("Ejercicio 9") {
    Ejercicio9View()
}



// =========================================================
// EJERCICIO 10 — MVVM: separar el cerebro de la pantalla 🧠
// =========================================================
//
// 🤔 EL PROBLEMA:
//   En el Ejercicio 9, la vista hace DOS trabajos: dibujar Y
//   conseguir los datos. En una app grande (como Mismly) eso se
//   vuelve un desastre. Por eso las empresas usan MVVM.
//
// ⭐️ MVVM = 3 piezas, cada una con UN solo trabajo
//
//   M  → Model      = la FICHA de datos        → Usuario (ya lo tienes)
//   V  → View       = la PANTALLA, solo dibuja → Ejercicio10View
//   VM → ViewModel  = el CEREBRO: consigue y   → UsuariosViewModel
//                     guarda los datos
//
//   🍽️ Restaurante: la View es el comedor (lo que ves), el
//   ViewModel es la cocina (prepara todo). El comedor no cocina.
//
// ⭐️ AQUÍ SE ENTIENDE struct vs class:
//
//   La View es un STRUCT → SwiftUI la destruye y la vuelve a crear
//   a cada rato (cada vez que redibuja). Si los datos vivieran ahí,
//   se perderían o se descargarían de nuevo.
//
//   El ViewModel es una CLASS → es UN solo objeto que sobrevive y
//   que la pantalla COMPARTE (el link del Google Doc 🔗). Aunque la
//   View se recree mil veces, el cerebro sigue siendo el mismo.
//
//       @Observable  → "avísale a la pantalla cuando algo cambie"
//                      (es el @State, pero para una class)
//
// 🎤 PREGUNTA TÍPICA DE ENTREVISTA:
//   "¿Qué es MVVM?"
//   → "Un patrón que separa los datos (Model), la pantalla (View)
//      y la lógica (ViewModel). La View solo dibuja; el ViewModel
//      consigue los datos y la View los observa."
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — En el ViewModel, completa `cargar()`: guarda en
//            `usuarios` lo que devuelve tu función del Ej. 9.
//
//   PASO 2 — En la View, 2 cambios:
//              a) el ForEach recorre la lista DEL CEREBRO: vm.usuarios
//              b) en el .task, pídele al cerebro que cargue:
//                 await vm.cargar()

// 🧠 EL CEREBRO (ViewModel)
@Observable
class UsuariosViewModel {

    var usuarios: [Usuario] = []

    func cargar() async {
        // PASO 1 👇 — una línea
        usuarios = await part2()
    }
}

// 📱 LA PANTALLA (View) — solo dibuja
struct Ejercicio10View: View {

    @State private var vm = UsuariosViewModel()   // aquí nace el cerebro

    var body: some View {
        NavigationStack {
            List {
                // PASO 2a 👇 — cambia [Usuario]() por la lista del cerebro
                ForEach(vm.usuarios) { usuario in
                    VStack(alignment: .leading) {
                        Text(usuario.name)
                        Text(usuario.email)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Usuarios (MVVM)")
            .task {
                // PASO 2b 👇 — pídele al cerebro que cargue
                await vm.cargar()

            }
        }
    }
}

#Preview("Ejercicio 10") {
    Ejercicio10View()
}



// =========================================================
// EJERCICIO 11 — Mismly: la grilla del reto de 66 días 🔥
// =========================================================
//
// 🎯 TU PROYECTO DE PORTAFOLIO, pieza 1.
//   66 círculos (11 columnas × 6 filas). Tocas "Marcar hoy" y el
//   círculo del día se pinta naranjo. Así se ve tu progreso.
//
// 🆕 LO NUEVO (ya está escrito, solo léelo):
//
//   dias = [false, false, false, ... ×66]
//     → una lista de Bool: true = día cumplido ✅, false = no ❌
//
//   dias[3]  → el día 4 (las listas empiezan a contar en 0)
//
//   LazyVGrid → como List, pero en forma de GRILLA (cuadrícula)
//
//   dias[i] ? .orange : .gray
//     → "¿el día i está cumplido? → naranjo; si no → gris"
//     Es un if/else en una sola línea (se llama "ternario").
//
//
// TU TAREA (2 pasos):
//
//   PASO 1 — En el botón "Marcar hoy", 2 líneas:
//              a) marca el día de hoy como cumplido → dias[hoy] = true
//              b) avanza al día siguiente → hoy = hoy + 1
//            (¡Es el contador del Ejercicio 2!)
//
//   PASO 2 — 🐛 Toca el botón 66 veces... ¡la app se CAE! 💥
//            Porque no existe el día 67 (dias[66] no existe).
//            Arréglalo: envuelve el PASO 1 en un if que solo
//            deje marcar si hoy < 66  (como el if del Ejercicio 6)
//
// =========================================================
// EJERCICIO 12 — Conectar TU racha a la grilla 🔥   (sigue abajo)
// =========================================================
//
//   Tu función del Reto 18 está copiada aquí abajo, tal cual la
//   escribiste. (Vivía en otro archivo y la app no la veía.)
//
//   PASO 1 — Debajo del título "Día X de 66", muestra la racha:
//              Text("🔥 Mejor racha: \(rachaMasLarga(dias: dias))")
//            (Llamas a TU máquina: le entra la lista `dias` y
//             sale un número.)
//
//   PASO 2 — Hoy todos los días quedan ✅, así que la racha
//            siempre es igual al día. 🥱 Agrega un segundo botón
//            "❌ Fallé hoy" que solo AVANCE el día SIN marcarlo:
//              if hoy < 66 { hoy = hoy + 1 }
//            (dias[hoy] se queda en false → la racha se corta 💔)

// 🧠 TU función del Reto 18 (Leccion10_Retos.swift)
func rachaMasLarga(dias: [Bool]) -> Int {
    var rachaActual = 0
    var mejorRacha = 0

    for dia in dias {
        if dia {
            rachaActual = rachaActual + 1
            if rachaActual > mejorRacha {
                mejorRacha = rachaActual
            }
        } else {
            rachaActual = 0
        }
    }

    return mejorRacha
}

struct Ejercicio11View: View {

    @State private var dias = Array(repeating: false, count: 66)
    @AppStorage("hoy") private var hoy = 0

    // =====================================================
    // EJERCICIO 13 — Días fallados en ROJO ❌
    // =====================================================
    //
    //   Hoy un día puede estar en 3 estados, pero solo pintamos 2:
    //     🟠 cumplido   🔘 pendiente   🔴 fallado ← ¡falta este!
    //
    //   Un Bool solo tiene 2 valores (true/false), así que para
    //   recordar los fallados usamos una SEGUNDA lista:
    //
    //       fallados[5] = true  → "el día 6 lo fallé"
    //
    //   PASO 1 — En el botón "❌ Fallé hoy", ANTES de avanzar el
    //            día, marca el fallo:  fallados[hoy] = true
    //
    //   PASO 2 — Completa la función `colorDelDia` de abajo: es
    //            una máquina 🏭 → le ENTRA un número de día,
    //            SALE un color. Rellena los 2 huecos:
    //              - si el día está cumplido  → return .orange
    //              - si el día está fallado   → return .red
    //
    //   PASO 3 — En el Circle, cambia el .fill(...) largo por:
    //              .fill(colorDelDia(i))

    @State private var fallados = Array(repeating: false, count: 66)

    // PASO 2 👇 — la máquina de colores
    func colorDelDia(_ i: Int) -> Color {
        if dias[i] {
            return .orange     // ← cámbialo por el color correcto
        }
        if fallados[i] {
            return .red// ← cámbialo por el color correcto
        }
        return .gray.opacity(0.25)   // pendiente (este ya está bien)
    }

    let columnas = Array(repeating: GridItem(.flexible()), count: 11)

    var body: some View {
        VStack(spacing: 24) {

            Text("Día \(hoy) de 66")
                .font(.largeTitle)
                .bold()

            // EJ. 12 · PASO 1 👇 — el Text con la mejor racha
            let racha = rachaMasLarga(dias:dias)
            Text("🔥 Mejor racha: \(racha)")

            LazyVGrid(columns: columnas, spacing: 10) {
                ForEach(0..<66, id: \.self) { i in
                    Circle()
                        .fill(colorDelDia(i))
                        .frame(width: 22, height: 22)
                }
            }

            Button("✅ Marcar hoy") {

                // PASO 1 👇 — dos líneas
                if hoy < 66 {
                    dias[hoy] = true
                    hoy = hoy + 1
                }

            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.orange)

            // EJ. 12 · PASO 2 👇 — el botón "❌ Fallé hoy"
Button("❌ Fallé hoy") {
                if hoy < 66 {
                    fallados[hoy] = true
                    hoy = hoy + 1
                }
            }
        }
        .padding()
    }
}

#Preview("Ejercicio 11") {
    Ejercicio11View()
}



// =========================================================
// 🔥 CALENTAMIENTO — la grilla desde CERO (sin mirar arriba)
// =========================================================
//
//   Meta: 10 círculos grises en una grilla de 5 columnas.
//
//       ⚪ ⚪ ⚪ ⚪ ⚪
//       ⚪ ⚪ ⚪ ⚪ ⚪
//
//   PASO 1 — la lista de columnas (una línea `let`)
//   PASO 2 — en el body: LazyVGrid + ForEach + Circle
//
//   Si te trabas más de 2 min, mira el Ej. 11 SOLO esa línea.

struct CalentamientoView: View {

    // PASO 1 👇 — las columnas
    let columnas = Array(repeating: GridItem(.flexible()), count: 5)
    @State private var marcados = Array(repeating: false, count: 10)
    func contarMarcados() -> Int {
        var caja = 0
        for m in marcados {
            if m {
                caja = caja + 1
            }
        }
        return caja
    }

    var body: some View {

        // PASO 2 👇 — borra el Text y escribe la grilla
        LazyVGrid(columns: columnas) {
            ForEach(0..<10, id: \.self) { i in
                Circle()
                    .fill(marcados[i] ? .orange : .gray)
                    .frame(width: 30, height: 30)
                    .onTapGesture {
                        marcados[i].toggle()
                    }
            }
            
        }

    }
}

#Preview("Calentamiento") {
    CalentamientoView()
}



// =========================================================
// PANTALLA PRINCIPAL — no la toques
// =========================================================
// TabView crea las pestañas de abajo para verlos todos a la vez.

struct ContentView: View {
    var body: some View {
        TabView {
            EjemploView()
                .tabItem { Label("Ejemplo", systemImage: "eye") }

            Ejercicio1View()
                .tabItem { Label("Ejercicio 1", systemImage: "person.crop.square") }

            Ejercicio2View()
                .tabItem { Label("Ejercicio 2", systemImage: "plus.circle") }

            Ejercicio3View()
                .tabItem { Label("Ejercicio 3", systemImage: "list.bullet") }

            Ejercicio4View()
                .tabItem { Label("Ejercicio 4", systemImage: "flame") }

            Ejercicio5View()
                .tabItem { Label("Ejercicio 5", systemImage: "hand.tap") }

            Ejercicio6View()
                .tabItem { Label("Ejercicio 6", systemImage: "plus.square") }

            Ejercicio7View()
                .tabItem { Label("Ejercicio 7", systemImage: "curlybraces") }

            Ejercicio8View()
                .tabItem { Label("Ejercicio 8", systemImage: "globe") }

            Ejercicio9View()
                .tabItem { Label("Ejercicio 9", systemImage: "person.2") }

            Ejercicio10View()
                .tabItem { Label("Ejercicio 10", systemImage: "brain") }

            Ejercicio11View()
                .tabItem { Label("66 días", systemImage: "flame.fill") }

            CalentamientoView()
                .tabItem { Label("Calentamiento", systemImage: "figure.run") }
        }
    }
}

#Preview {
    ContentView()
}
