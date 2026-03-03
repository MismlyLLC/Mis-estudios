# Mis Estudios — Swift para Entrevista iOS

---

## Cómo retomar el estudio en una nueva sesión

Al abrir un chat nuevo con Claude, pega este prompt:

> "Continuemos con el estudio de Swift. Completé las lecciones 1-8 (Variables, Condicionales, Loops, Funciones, Arrays, Optionals, Structs, Classes y Protocolos). Mi archivo de trabajo es AI Learning/AI Learning/Playground.swift. El repositorio está en github.com/MismlyLLC/Mis-estudios. La siguiente lección es LeetCode Easy en Swift. Actualiza la lección pendiente según el README del repositorio."

**Al terminar cada sesión pedir:**
> "Genera el HTML del día para imprimir, actualiza el README con el nuevo progreso y guarda la memoria para la próxima sesión."

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
        print(numero)  // solo pares
    }
}
```

---

### Lección 4 — Funciones

- Se definen con `func`
- Los parámetros llevan nombre y tipo
- El tipo de retorno va después de `->`
- Si no retorna nada, no se escribe `->`
- Al llamar la función se escribe la etiqueta del parámetro

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

// Llamadas:
print(esPar(numero: 7))       // false
saludar(nombre: "Nicolas", edad: 25)
```

---

### Lección 5 — Arrays y Diccionarios

**Array** — lista ordenada, acceso por índice (empieza en 0)

```swift
let notas: [Int] = [6, 4, 7, 5, 6]
print(notas[0])      // 6 — primer elemento
print(notas[4])      // 6 — último elemento
print(notas.count)   // 5 — cantidad de elementos
```

**Diccionario** — pares clave: valor, acceso por nombre

```swift
let contacto: [String: String] = [
    "nombre": "Nicolas",
    "ciudad": "Antofagasta"
]
print(contacto["nombre"] ?? "sin valor")  // "Nicolas"
```

**Diferencia clave:**
- Array: cuando el orden importa (lista de tareas, notas, etc.)
- Diccionario: cuando necesitas describir algo con etiquetas (perfil de usuario, configuración, etc.)

---

### Lección 6 — Optionals

Un Optional es una variable que puede tener un valor o puede ser `nil` (vacío).
Se declara con `?` después del tipo.

```swift
var apellido: String? = nil   // puede ser nil
var edad: Int? = 25           // tiene valor, pero podría ser nil
```

**Tres formas de manejar optionals:**

1. `if let` — optional binding, la forma más segura

```swift
if let a = apellido {
    print(a)           // aquí a es String limpio
} else {
    print("Sin apellido")
}
```

2. `??` — nil coalescing, valor por defecto si es nil

```swift
print(apellido ?? "Sin apellido")
print(edad ?? 0)
```

3. `!` — force unwrap, peligroso, evitar

```swift
print(apellido!)  // crash si apellido es nil
```

---

### Lección 7 — Structs y Classes

**Struct — tipo por valor (Value Type)**
- Swift genera el `init` automáticamente
- Al copiar un struct se crea una copia independiente

```swift
struct Persona {
    var nombre: String
    var edad: Int
    var ciudad: String
}

var p1 = Persona(nombre: "Nicolas", edad: 25, ciudad: "Antofagasta")
```

**Class — tipo por referencia (Reference Type)**
- Debes escribir el `init` manualmente
- Al copiar una class, ambas variables apuntan al mismo objeto

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

Un protocolo es un "contrato" que define qué métodos o propiedades debe tener un tipo, sin implementarlos.

- Se define con `protocol`
- Un struct o class adopta el protocolo escribiendo su nombre después de `:`
- Si adoptas un protocolo, **debes** implementar todo lo que exige
- Un tipo puede adoptar múltiples protocolos separados por coma

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

let e = Estudiante(nombre: "Nicolas", carrera: "Administración")
print(e.saludar())  // "Hola, soy Nicolas y estudio Administración"
```

```swift
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

let cuadrado = Cuadrado(lado: 5.0)
print(cuadrado.area())   // 25.0

let circulo = Circulo(radio: 3.0)
print(circulo.area())    // 28.2744
```

---

## Preguntas de Entrevista y Respuestas

---

**¿Cuál es la diferencia entre `let` y `var`?**

`let` declara una constante cuyo valor no puede cambiar después de ser asignado. `var` declara una variable cuyo valor puede modificarse. En Swift se recomienda usar `let` siempre que sea posible y solo usar `var` cuando el valor necesite cambiar.

---

**¿Cuál es la diferencia entre un Array y un Diccionario?**

Un Array es una colección ordenada de elementos del mismo tipo, accesibles por índice numérico que empieza en 0. Un Diccionario es una colección de pares clave-valor donde se accede a cada elemento por su clave. Se usa Array cuando el orden importa y Diccionario cuando se necesita describir algo con etiquetas.

---

**¿Qué es un Optional en Swift?**

Un Optional es un tipo que puede contener un valor o puede ser `nil`. Se declara con `?` después del tipo. Swift obliga a manejar los optionals explícitamente para evitar crashes por valores nulos.

---

**¿Cómo se maneja un Optional de forma segura?**

La forma más segura es usando `if let`, conocido como optional binding. También se puede usar `??` para proporcionar un valor por defecto cuando el optional es nil. Se debe evitar el force unwrap con `!` ya que causa un crash si el valor es nil.

---

**¿Cuál es la diferencia entre Struct y Class en Swift?**

Struct es un tipo por valor y Class es un tipo por referencia. Al copiar un Struct se crea una copia independiente. Al copiar una Class, ambas variables apuntan al mismo objeto. Además, Swift genera el inicializador de un Struct automáticamente, mientras que en una Class debes escribirlo manualmente.

---

**¿Cuándo usarías Struct y cuándo Class?**

En Swift se prefiere Struct por defecto. Se usa Class cuando se necesita herencia, cuando el objeto debe ser compartido entre distintas partes del código, o cuando se necesita un ciclo de vida controlado.

---

**¿Qué es `nil` en Swift?**

`nil` representa la ausencia de valor. Es diferente a un string vacío `""` o un cero `0`, que son valores existentes. Solo las variables declaradas como Optional pueden ser `nil`.

---

**¿Qué significa `self` dentro de una Class?**

`self` hace referencia a la instancia actual del objeto. Se usa dentro del `init` para distinguir entre las propiedades del objeto y los parámetros que tienen el mismo nombre.

```swift
init(marca: String) {
    self.marca = marca  // self.marca es la propiedad, marca es el parámetro
}
```

---

**¿Cuál es la diferencia entre `==` y `=`?**

`=` es el operador de asignación. `==` es el operador de comparación — comprueba si dos valores son iguales y retorna un Bool.

---

**¿Qué es el operador módulo `%`?**

El operador `%` retorna el resto de una división entera. Se usa comúnmente para saber si un número es par: si `numero % 2 == 0` el número es par.

---

**¿Qué es un protocolo en Swift?**

Un protocolo es un contrato que define qué métodos o propiedades debe tener un tipo, sin implementarlos. Cualquier struct o class que adopte el protocolo está obligado a implementar lo que exige. Es la base del patrón de diseño orientado a protocolos (Protocol-Oriented Programming), muy usado en Swift e iOS.

---

*Archivo de práctica: `AI Learning/Playground.swift`*
