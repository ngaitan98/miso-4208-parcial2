# Estrategia de pruebas
## Objetivos de las pruebas:
1. Realizar pruebas sobre los APKs para encontrar los mutantes
2. Generar reportes con los resultados de las pruebas sobre los APKs
3. Identificar los mutantes y tipo de error generado sobre los mutantes

## Contexto de ejecución:
* **Infraestructura:** Para la infraestructura de las pruebas se contó con un computador MacBook Pro de 16GB de RAM con procesador Intel Core i7 de 2,2GHz
* **Tiempo máquina:** Se cuenta con 16 horas de máquina para ejecutar las pruebas
* **Tiempo hombre:** Se cuenta con 8 horas hombre para la realización de las pruebas
* **Presupuesto de pruebas:** Se cuenta con una máquina física para ejecutar las pruebas, la cuál incluye el emulador Android para la ejecución de las mismas

## Descripción de las pruebas:
Se realizó un script de pruebas BDT para Calabash tomando como base el funcionamiento del APK original y se ejecutó sobre los mutantes a la vez que se generaba un informe HTML con la información de ejecución de las pruebas.

Prosteriormente, se realizó un análisis sobre los reportes generados en las pruebas y se clasificaron de acuerdo a si fué posible encontrar el mutante y si compiló. Estos datos se guardaron en un JSON.

Finalmente, se realizó una herramienta web sobre node para la visualización de los reportes y la información obtenida con los filtros realizados sobre los reportes.
