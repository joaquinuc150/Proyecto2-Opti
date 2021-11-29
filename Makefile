con_costos:
	python3 solvers.py < con_costos_inputs/inputdecenas.txt
	python3 solvers.py < con_costos_inputs/inputcentenas.txt
	python3 solvers.py < con_costos_inputs/inputmiles.txt
	python3 solvers.py < con_costos_inputs/inputdecenas2.txt
	python3 solvers.py < con_costos_inputs/inputcentenas2.txt
	python3 solvers.py < con_costos_inputs/inputmiles2.txt
	python3 solvers.py < con_costos_inputs/inputdecenas3.txt
	python3 solvers.py < con_costos_inputs/inputcentenas3.txt
	python3 solvers.py < con_costos_inputs/inputmiles3.txt

sin_costos:
	python3 solvers.py < sin_costos_inputs/inputdecenas.txt
	python3 solvers.py < sin_costos_inputs/inputcentenas.txt
	python3 solvers.py < sin_costos_inputs/inputmiles.txt
	python3 solvers.py < sin_costos_inputs/inputdecenas2.txt
	python3 solvers.py < sin_costos_inputs/inputcentenas2.txt
	python3 solvers.py < sin_costos_inputs/inputmiles2.txt
	python3 solvers.py < sin_costos_inputs/inputdecenas3.txt
	python3 solvers.py < sin_costos_inputs/inputcentenas3.txt
	python3 solvers.py < sin_costos_inputs/inputmiles3.txt

all: con_costos sin_costos