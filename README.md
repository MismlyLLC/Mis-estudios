# Mis Estudios — Swift para Entrevista iOS

---

## Cómo retomar el estudio en una nueva sesión

Al abrir un chat nuevo con Claude, pega este prompt:

> "Continuemos con el estudio de Swift. Completé las lecciones 1-8 y el repaso de esqueletos. Mi archivo de trabajo es AI Learning/AI Learning/Playground.swift. El repositorio está en github.com/MismlyLLC/Mis-estudios. La siguiente lección es LeetCode Easy en Swift. Actualiza la lección pendiente según el README del repositorio."

**Al terminar cada sesión pedir:**
> "Pasa todo lo que vimos hoy al README para imprimir, actualiza el progreso y guarda la memoria para la próxima sesión."

---

## Progreso

| Lección | Tema | Estado |
|---------|------|--------|
| 1 | Variables y Tipos de Datos | Completada |
| 2 | Condicionales (if/else) | Completada |
| 3 | Loops (for/while) | Completada |
| 4 | Funciones | Completada |
| 5 | Arrays y Diccionarios | Completada |
| 6 | Optionals | Completada |
| 7 | Structs y Classes | Completada |
| 8 | Protocolos | Completada |
| — | Repaso de Esqueletos 6-8 | Completado |
| 9 | LeetCode Easy en Swift | Pendiente |

---

## Resumen por Lección

---

### Lección 1 — Variables y Tipos de Datos

- `let` declara una constante — su valor no puede cambiar
- `var` declara una variable — su valor puede cambiar
- Tipos básicos: `String`, `Int`, `Double`, `Bool`
- Interpolación de strings: `"\(variable)"`

```swift
let nombre = "Nicolas"
var edad = 25
print("Me llamo \(nombre), tengo \(edad) años")
```

---

### Lección 2 — Condicionales

- `if`, `else if`, `else` para tomar decisiones
- Operadores de comparación: `==`, `!=`, `>`, `<`, `>=`, `<=`
- Operadores lógicos: `&&` (y), `||` (o)

```swift
let temperatura = 40

if temperatura >= 30 {
    print("Hace mucho calor")
} else if temperatura >= 15 {
    print("Clima agradable")
} else {
    print("Hace frío")
}
```

---

### Lección 3 — Loops

- `for i in 1...10` — rango cerrado, incluye el 10
- `for i in 1..<10` — rango abierto, no incluye el 10
- `%` es el operador módulo — retorna el resto de una división
- `numero % 2 == 0` → el número es par

```swift
for i in 1...10 {
    print(i)
}

for numero in 1...20 {
    if numero % 2 == 0 {
        print(numero)
    }
}
```

---

### Lección 4 — Funciones

- Se definen con `func`
- Los parámetros llevan nombre y tipo
- El tipo de retorno va después de `->`
- Si no retorna nada, no se escribe `->`

```swift
func esPar(numero: Int) -> Bool {
    if numero % 2 == 0 {
        return true
    } else {
        return false
    }
}

func saludar(nombre: String, edad: Int) {
    print("Hola \(nombre), tienes \(edad) años")
}
```

---

### Lección 5 — Arrays y Diccionarios

**Array** — lista ordenada, acceso por índice (empieza en 0)

```swift
let notas: [Int] = [6, 4, 7, 5, 6]
print(notas[0])      // 6
print(notas.count)   // 5
```

**Diccionario** — pares clave: valor

```swift
let contacto: [String: String] = [
    "nombre": "Nicolas",
    "ciudad": "Antofagasta"
]
print(contacto["nombre"] ?? "sin valor")
```

---

### Lección 6 — Optionals

Un Optional puede tener un valor o ser `nil`. Se declara con `?` después del tipo.

```swift
var apellido: String? = nil
var edad: Int? = 25
```

**Formas de manejarlos:**

```swift
// if let — más seguro
if let a = apellido {
    print(a)
} else {
    print("Sin apellido")
}

// ?? — valor por defecto
print(apellido ?? "Sin apellido")

// ! — peligroso, evitar
print(apellido!)  // crash si es nil
```

---

### Lección 7 — Structs y Classes

**Struct — tipo por valor**
Swift genera el `init` automáticamente.

```swift
struct Persona {
    var nombre: String
    var edad: Int
}

var p1 = Persona(nombre: "Nicolas", edad: 25)
```

**Class — tipo por referencia**
Debes escribir el `init` manualmente.

```swift
class Vehiculo {
    var marca: String
    var velocidad: Int

    init(marca: String, velocidad: Int) {
        self.marca = marca
        self.velocidad = velocidad
    }
}
```

---

### Lección 8 — Protocolos

Un protocolo es un contrato que define qué métodos o propiedades debe tener un tipo.

```swift
protocol Saludable {
    func saludar() -> String
}

struct Estudiante: Saludable {
    let nombre: String
    let carrera: String

    func saludar() -> String {
        return "Hola, soy \(nombre) y estudio \(carrera)"
    }
}

protocol Calculable {
    func area() -> Double
}

struct Cuadrado: Calculable {
    var lado: Double
    func area() -> Double {
        return lado * lado
    }
}

struct Circulo: Calculable {
    var radio: Double
    func area() -> Double {
        return 3.1416 * radio * radio
    }
}
```

---

### Repaso — Los 3 Esqueletos (Lecciones 6-8)

Estos son los patrones mínimos que debes poder escribir de memoria.

---

**Esqueleto 1 — Optional**

```swift
func runPlayground() {

    var x: Tipo? = nil
    if let x = x {
        // x existe
    } else {
        // x es nil
    }

}
```

---

**Esqueleto 2 — Struct y Class**

```swift
struct Nombre {
    var propiedad: Tipo
}

class Nombre {
    var propiedad: Tipo
    init(propiedad: Tipo) {
        self.propiedad = propiedad
    }
}
```

---

**Esqueleto 3 — Protocolo**

```swift
protocol Nombre {
    func metodo() -> Tipo
}

struct Adoptante: Nombre {
    func metodo() -> Tipo {
        return valor
    }
}
```

---

**Errores comunes a evitar:**

| Error | Incorrecto | Correcto |
|-------|-----------|---------|
| Optional sin `:` | `var x Tipo? = nil` | `var x: Tipo? = nil` |
| `{` en la propiedad de class | `var propiedad: Tipo {` | `var propiedad: Tipo` |
| `{` en init | `init(propiedad: Tipo)` | `init(propiedad: Tipo) {` |
| Protocolo con `:` | `protocol Nombre: Tipo` | `protocol Nombre` |
| Adoptante sin protocolo | `struct Adoptante` | `struct Adoptante: Nombre` |
| Tipos dentro de runPlayground() | struct/class/protocol adentro | van **fuera** de la función |

---

## Preguntas de Entrevista y Respuestas

---

**¿Cuál es la diferencia entre `let` y `var`?**

`let` declara una constante cuyo valor no puede cambiar. `var` declara una variable cuyo valor puede modificarse. Se recomienda usar `let` siempre que sea posible.

---

**¿Cuál es la diferencia entre un Array y un Diccionario?**

Un Array es una colección ordenada accesible por índice numérico. Un Diccionario es una colección de pares clave-valor accesible por nombre.

---

**¿Qué es un Optional en Swift?**

Un Optional es un tipo que puede contener un valor o ser `nil`. Se declara con `?` después del tipo. Swift obliga a manejarlo explícitamente para evitar crashes.

---

**¿Cómo se maneja un Optional de forma segura?**

Con `if let` (optional binding) o `??` (valor por defecto). Se debe evitar `!` (force unwrap) porque causa crash si el valor es nil.

---

**¿Cuál es la diferencia entre Struct y Class?**

Struct es tipo por valor — al copiar se crea una copia independiente. Class es tipo por referencia — al copiar ambas variables apuntan al mismo objeto. Struct genera el `init` automáticamente, Class no.

---

**¿Cuándo usarías Struct y cuándo Class?**

Se prefiere Struct por defecto. Class se usa cuando se necesita herencia o compartir el mismo objeto entre distintas partes del código.

---

**¿Qué es `nil` en Swift?**

`nil` representa la ausencia de valor. Solo las variables Optional pueden ser `nil`.

---

**¿Qué significa `self` dentro de una Class?**

`self` hace referencia a la instancia actual. Se usa en el `init` para distinguir entre la propiedad del objeto y el parámetro con el mismo nombre.

---

**¿Cuál es la diferencia entre `==` y `=`?**

`=` asigna un valor. `==` compara dos valores y retorna un Bool.

---

**¿Qué es el operador módulo `%`?**

Retorna el resto de una división entera. `numero % 2 == 0` indica que el número es par.

---

**¿Qué es un protocolo en Swift?**

Un protocolo es un contrato que define qué métodos o propiedades debe tener un tipo, sin implementarlos. El tipo que lo adopta está obligado a implementar todo lo que exige. Es la base del Protocol-Oriented Programming en Swift.

---

**¿Cuál es la diferencia entre un protocolo y un struct?**

El protocolo define el contrato (qué debe tener). El struct es el tipo concreto que firma ese contrato e implementa lo que se le exige. Un struct adopta un protocolo escribiendo su nombre después de `:`.

---

*Archivo de práctica: `AI Learning/Playground.swift`*  
*Branch con notas completas: `main`*  
*Branch para practicar en blanco: `practica`*
