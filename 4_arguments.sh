# !/bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "el nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "el numero de parametros enviados es: $#"
echo "los parametros enviados son $*"