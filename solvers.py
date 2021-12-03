import random
#Lectura de parametros

servicios = int(input("Cantidad de ubicaciones posibles de servicios: "))
zonas = int(input("Cantidad de zonas: "))
limite_inf_costo = int(input("Costo minimo del servicio: "))
limite_sup_costo = int(input("Costo maximo del servicio: "))
servicios_zonas_max = int(input("Cantidad maxima de servicios colindantes a una zona\n(Debe ser menor o igual a "+str(servicios)+"): "))

costos_servicios = [random.randint(limite_inf_costo,limite_sup_costo) for x in range(servicios)]
coberturas = []
servicios_list = [x for x in range(1,servicios+1)]
for x in range(zonas):
    coberturas.append(random.sample(servicios_list,random.randint(1,servicios_zonas_max)))

#Generador LPSolve
#Funcion Objetivo
fo = "min: "
for i in range(servicios):
    fo += str(costos_servicios[i])+" x"+str(i+1)
    if i != (servicios-1):
        fo += " + "
    else:
        fo += ';\n'

const = ""
restriccion = 1
for zona in coberturas:
    const += "r"+str(restriccion)+": "
    for j in range(len(zona)):
        const += "x"+str(zona[j])
        if j < (len(zona)- 1):
            const += " + "
        else:
            const += " >= 1"
    const += ";\n"
    restriccion += 1

bin = "bin "
for i in range(servicios):
    bin += "x"+str(i+1)
    if i < servicios-1:
        bin += ", "
    else:
        bin += ";\n"

if limite_inf_costo == 1 and limite_sup_costo == 1:
    solver = open("sin_costos_instances/cobertura_instance_"+str(servicios)+"_"+str(zonas)+"_sin_costos.lp","w")
else:
    solver = open("con_costos_instances/cobertura_instance_"+str(servicios)+"_"+str(zonas)+"_"+str(limite_inf_costo)+"_"+str(limite_sup_costo)+".lp","w")
solver.write(fo)
solver.write("\n")
solver.write(const)
solver.write("\n")
solver.write(bin)
solver.close()
    

#### GENERACIÓN DEL MODELO EN MINIZINC ####
if limite_inf_costo == 1 and limite_sup_costo == 1:
    file = open("sin_costos_instances/cobertura_instance_"+str(servicios)+"_"+str(zonas)+"_sin_costos.mzn","w")
else:
    file = open("con_costos_instances/cobertura_instance_"+str(servicios)+"_"+str(zonas)+"_"+str(limite_inf_costo)+"_"+str(limite_sup_costo)+".mzn","w")
file.write("int: zonas = " + str(zonas) + ";" + "\n")
nombres = []
for i in range(1, servicios+1):
    name = "x"+str(i)
    nombres.append(name)
    file.write("var 0..1 : " + name + ";" + "\n")

file.write("var int: fo;\n"+ "\n")

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

file.write(""+ "\n")

file.write("constraint ")

for i in range(1, servicios+1):
    file.write(str(costos_servicios[i-1])+"*x"+str(i))
    if i < servicios:
        file.write(" + ")
    else:
        file.write("= fo;\n")

file.write(""+ "\n")

file.write("solve minimize fo;\n"+ "\n")

file.write("output [")

for neim in nombres:
    file.write('"{}"'.format("\\n" +neim+"=")+", show("+neim+"), "+ "\n")

file.write('"{}"'.format("\\n Solucion Funcion Objetivo =")+ ", show(fo)];\n")

file.close()
