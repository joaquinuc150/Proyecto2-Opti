import random
import os
#Lectura de parametros

servicios = int(input("Cantidad de ubicaciones posibles de servicios: "))
zonas = int(input("Cantidad de zonas: "))
limite_inf_costo = int(input("Costo minimo del servicio: "))
limite_sup_costo = int(input("Costo maximo del servicio: "))
servicios_zonas_max = int(input("Cantidad maxima de zonas cubiertas por un servicio\n(Debe ser menor o igual a "+str(servicios)+"): "))

costos_servicios = [random.randint(limite_inf_costo,limite_sup_costo) for x in range(servicios)]

servicios_list = [x for x in range(1,servicios+1)]
coberturas = [] #lista de listas, donde, se guardan las posibles locaciones por zona
for x in range(zonas):
    coberturas.append(random.sample(servicios_list,random.randint(1,servicios_zonas_max)))

print("Posibles servicios =",servicios)
print("Zonas =",zonas)
print("Coberturas =",coberturas)

#### GENERACIÓN DEL MODELO EN MINIZINC ####
file = open("modeloCobertura.mzn", "w")
file.write("int: zonas = " + str(zonas) + ";" + os.linesep)
nombres = []
for i in range(1, servicios+1):
    name = "x"+str(i)
    nombres.append(name)
    file.write("var 0..1 : " + name + ";" + os.linesep)

file.write(""+ os.linesep)

for z in coberturas: # cada z es una zona con las locaciones que le sirven z = [x1, x6..]
    restriccion = ""
    flag = 0 # flag para revisar que si es el último elemento, no se agrega un "+" al string
    for x in z:
        restriccion += "x"+str(x) + " "
        if (flag < len(z)-1):
            restriccion += "+ "
        flag += 1
    restriccion += ">= 1;\n"
    file.write("constraint " + restriccion)  

file.write(""+ os.linesep)

file.write("solve satisfy;"+ os.linesep)

file.write(""+ os.linesep)

file.write("output [")

for neim in nombres:
    file.write('"{}"'.format("\\n" +neim+"=")+", show("+neim+"), "+ os.linesep)

file.write('"{}"'.format("\\n")+ "];")