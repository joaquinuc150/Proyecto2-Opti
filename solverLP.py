import random
#Lectura de parametros

servicios = int(input("Cantidad de ubicaciones posibles de servicios: "))
zonas = int(input("Cantidad de zonas: "))
limite_inf_costo = int(input("Costo minimo del servicio: "))
limite_sup_costo = int(input("Costo maximo del servicio: "))
servicios_zonas_max = int(input("Cantidad maxima de zonas cubiertas por un servicio\n(Debe ser menor o igual a "+str(servicios)+"): "))

costos_servicios = [random.randint(limite_inf_costo,limite_sup_costo) for x in range(servicios)]

servicios_list = [x for x in range(1,servicios+1)]
coberturas = []
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
for zona in coberturas:
    for j in range(len(zona)):
        const += "x"+str(zona[j])
        if j < (len(zona)- 1):
            const += " + "
        else:
            const += " >= 1"
    const += ";\n"

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