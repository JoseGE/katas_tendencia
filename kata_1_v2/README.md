KATA #1

# Realizar un programa que reciba comandos tipo flag  command-line application.

ej. -l -p 8080 -d /usr/logs donde los varlores con - son los comandos y lo siguiente los valores correspondientes

# Posibles flags
- -g para crear una lista de strings
- -d para crear una lista de enteros

    Ej. -g this,is,a,list -d 1,2,-3,5
    Es un comando
        Llevar a un listado de commandos solicitados
    llevar a un listado de arreglos identificado con el comando solicitado
    
    luego para validar que lo ingresado como argumento del comando sea valido
    se lleva a un filtro: separar el argumento, validara el tipo de dato ingresado.
    Resultado: 
        Arrglo de Strings [“this”, “is”, “a”, “list”]
        Arreglo de integers, [1, 2, -3, 5].
        ["false","true"]
# Casos de prueba sugeridos

asegúrese de tener una prueba con un entero negativo (confuso - signo)
El orden de los argumentos no tiene por qué coincidir con el orden dado en el esquema.
tener algunas pruebas de que los valores predeterminados adecuados se asignan correctamente si los indicadores están en el esquema faltan en los argumentos proporcionados.

# Tecnologia a utilizar Dart

Funcionalidades:
- Separar String
- Buscar comandos
- Validar valores a convertir
    Ej. si el comando es para string validar que todos los valores separados por , sean texto
- construir arreglo de valores


