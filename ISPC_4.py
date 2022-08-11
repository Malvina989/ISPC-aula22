#Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:
#4,  Fido,  12/12/2012 , Macho, 23546987
#Recorrer la lista “Perro2” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.

Perro2 = ["Fido", "12/12/2012", "Macho", 23546987]

for i in range(len(Perro2)-1, -1, -1):
    print(Perro2[i])
