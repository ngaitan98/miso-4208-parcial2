# Estrategia de pruebas
## Objetivos de las pruebas:
1. Realizar pruebas sobre los APKs para encontrar los mutantes
2. Generar reportes con los resultados de las pruebas sobre los APKs
3. Identificar los mutantes y tipo de error generado sobre los mutantes

## Contexto de ejecución:
* **Infraestructura:** Para la infraestructura de las pruebas se contó con un computador MacBook Pro de 16GB de RAM con procesador Intel Core i7 de 2,2GHz
* **Tiempo máquina:** Se cuenta con 16 horas de máquina para ejecutar las pruebas.
* **Tiempo hombre:** Se cuenta con 24 horas hombre para la realización de las pruebas.
* **Presupuesto de pruebas:** Se cuenta con una máquina física para ejecutar las pruebas, la cuál incluye el emulador Android para la ejecución de las mismas. Se hizo uso de un emulador de Pixel 3XL con la versión 27 de Android

## Descripción de las pruebas:
Se realizó un script de pruebas BDT para Calabash sobre el funcionamiento del apk original. Este script abarca todas las funcionalidades de la aplicación. Para identificar mutantes, se ejecutó este mismo script haciendo regresión sobre los resultados obtenidos en el apk original. Finalmente, se genera un reporte con la ejecución de las pruebas y los puntos de quiebre.

Posteriormente, se realizó un análisis sobre los reportes generados en las pruebas y se clasificaron de acuerdo a si fué posible encontrar el mutante, y si el mutante dañaba la compilación de la aplicación. Este análisis se puede encontrar en una herramienta de visualización desarrollada con React. La versión en vivo se encuentra en el siguiente link: https://master.d301snoko0eojd.amplifyapp.com/
