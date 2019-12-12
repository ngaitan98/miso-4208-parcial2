# Estrategia de pruebas
## Objetivos de las pruebas:
1. Realizar pruebas sobre los APKs para encontrar los mutantes
2. Generar reportes con los resultados de las pruebas sobre los APKs
3. Identificar los mutantes y tipo de error generado sobre los mutantes

## Contexto de ejecución:
* **Tiempo hombre:** Se cuenta con 8 horas hombre para la realización de las pruebas

## Descripción de las pruebas:
Se realizó un script de pruebas BDT para Calabash tomando como base el funcionamiento del APK original y se ejecutó sobre los mutantes a la vez que se generaba un informe HTML con la información de ejecución de las pruebas.

Prosteriormente, se realizó un análisis sobre los reportes generados en las pruebas y se clasificaron de acuerdo a si fué posible encontrar el mutante y si compiló. Estos datos se guardaron en un JSON.

Finalmente, se realizó una herramienta web sobre node para la visualización de los reportes y la información obtenida con los filtros realizados sobre los reportes.
