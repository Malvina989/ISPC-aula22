# Actividad 3 phyton, Salvador Berón

# Crear un lista en Python denominado “Perro” que contenga los siguientes valores:
# 13,  Puppy,  12/12/2012 , Macho, 123
# Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
# Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .

Perro = [13, "Puppy", "12/12/2012", "Macho", 123]

print("Lista original: ")
print(Perro)

# Modificación :

Perro[2] = "13/12/2012"
Perro[4] = 28957346 

print("Lista modificada")
print(Perro)
