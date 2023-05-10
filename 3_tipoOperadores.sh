# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Roberto Palacios

numA=20
numB=2

echo "\nOperadores Aritmeticos"
echo "NumeroA = $numA"
echo "NumeroB = $numB"
echo "Sumar A + B =" $((numA + numB))
echo "Restar A - B =" $((numA - numB))
echo "Multiplicar A * B =" $((numA * numB))
echo "Dividir A / B =" $((numA / numB))
echo "Residuo A % B =" $((numA % numB))


echo "\nOperadores Aritmeticos"
echo "NumeroA = $numA"
echo "NumeroB = $numB"
echo "Sumar A > B =" $((numA > numB))
echo "Restar A < B =" $((numA < numB))
echo "Sumar A >= B =" $((numA >= numB))
echo "Restar A <= B =" $((numA <= numB))
echo "Sumar A == B =" $((numA == numB))
echo "Restar A != B =" $((numA != numB))


echo "\nOperadores Aritmeticos"
echo "NumeroA = $numA"
echo "NumeroB = $numB"
echo "Sumar A = A + B =" $((numA += numB))
echo "Sumar A = A - B =" $((numA -= numB))

