# Siniestros Viales en la Ciudad de Buenos Aires con víctimas fatales Entre 2016 y 2021


![siniestros](https://camo.githubusercontent.com/c89e484e93d62f006114729075599dc6d77933f4eb199f15e0189a5180f4a973/68747470733a2f2f7374617469632e6c616a6f726e61646165737461646f64656d657869636f2e636f6d2f77702d636f6e74656e742f75706c6f6164732f323032322f30382f53696e69657374726f732d7669616c65732e6a7067)

## Introduccion

Este proyecto se realizó simulando ser un Data Analist de una consultora.
Tiene como finalidad la elaboración de un análisis de datos solicitado por el Observatorio de Movilidad y Seguridad Vial (OMSV), bajo la órbita de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires (CABA).
Para el analisis de datos se utiliza un dataset con información sobre homicidios de siniestros viales en la Ciudad de Buenos Aires, durante los años 2016-2021, que es de publico acceso en la página oficial de CABA.

Este proyecto es una oportunidad para aplicar mis habilidades de análisis de datos, EDA-ETL y confeccion de un dashboard y un reporte para luego presentarlo. 
También es importante ver los problemas que afectan a la Ciudad de Buenos Aires con respecto a la seguridad vial y generar conciencia con respecto a la prevencion de muertes por accidentes de transito.

## Contexto

Los siniestros viales, también conocidos como accidentes de tráfico o accidentes de tránsito, son eventos que involucran vehículos en las vías públicas y que pueden tener diversas causas, como colisiones entre automóviles, motocicletas, bicicletas o peatones, atropellos, choques con objetos fijos o caídas de vehículos. Estos incidentes pueden tener consecuencias que van desde daños materiales hasta lesiones graves o fatales para los involucrados.

En el contexto de una ciudad como Buenos Aires, los siniestros viales pueden ser una preocupación importante debido al alto volumen de tráfico y la densidad poblacional. Estos incidentes pueden tener un impacto significativo en la seguridad de los residentes y visitantes de la ciudad, así como en la infraestructura vial y los servicios de emergencia.

Las tasas de mortalidad relacionadas con siniestros viales suelen ser un indicador crítico de la seguridad vial en una región. Estas tasas se calculan, generalmente, como el número de muertes por cada cierto número de habitantes o por cada cierta cantidad de vehículos registrados. Reducir estas tasas es un objetivo clave para mejorar la seguridad vial y proteger la vida de las personas en la ciudad.

Es importante destacar que la prevención de siniestros viales involucra medidas como la educación vial, el cumplimiento de las normas de tráfico, la infraestructura segura de carreteras y calles, así como la promoción de vehículos más seguros. El seguimiento de las estadísticas y la implementación de políticas efectivas son esenciales para abordar este problema de manera adecuada.

En Argentina, cada año mueren cerca de 4.000 personas en siniestros viales. Aunque muchas jurisdicciones han logrado disminuir la cantidad de accidentes de tránsito, esta sigue siendo la principal causa de muertes violentas en el país. Los informes del Sistema Nacional de Información Criminal (SNIC), del Ministerio de Seguridad de la Nación, revelan que entre 2018 y 2022 se registraron 19.630 muertes en siniestros viales en todo el país. Estas cifras equivalen a 11 personas por día que resultaron víctimas fatales por accidentes de tránsito.

Solo en 2022, se contabilizaron 3.828 muertes fatales en este tipo de hechos. Los expertos en la materia indican que en Argentina es dos o tres veces más alta la probabilidad de que una persona muera en un siniestro vial que en un hecho de inseguridad delictiva.

## Rol a desarrollar

El Observatorio de Movilidad y Seguridad Vial (OMSV), centro de estudios que se encuentra bajo la órbita de la Secretaría de Transporte del Gobierno de la Ciudad Autónoma de Buenos Aires, nos solicita la elaboración de un proyecto de anális de datos, con el fin de generar información que le permita a las autoridades locales tomar medidas para disminuir la cantidad de víctimas fatales de los siniestros viales. Para ello, nos disponibilizan un dataset sobre homicidios en siniestros viales acaecidos en la Ciudad de Buenos Aires durante el periodo 2016-2021. Este dataset se encuentra en formato xlsx y contiene dos hojas llamadas: hechos y víctimas.

## Objetivo

El objetivo es elaborar un proyecto de analisis de datos, con el fin de generar informacion que le permita a las autoridades locales tomar medidas para disminuir la cantidad de victimas fatales de los siniestros viales.

## Analisis

En este proyecto tuve que trabajar con dos Datasets bajados de la web data.buenosaires.gob.ar/dataset/victimas-siniestros-viales, que contiene un archivo en formato Excel con informacion de Víctimas Fatales y lesiones en Siniestros Viales en la ciudad de Buenos Aires (Homicidios.xlsx y lesiones.xlsx).

Como primer paso se hizo un proceso de ETL (Extracción, limpieza y carga de datos) y un Proceso de EDA (Análisis Exploratorio de los datos) en Visual Studio, con el lenguaje de programacion Python y las librerias Pandas, Os, Matplotlib, Seaborn, Folliun y Sqlalchemy

En el proceso de ETL (Extracción, limpieza y carga de datos) realizamos la extraccion de las bases que vinieron en formato Excel, con dos hojas, una de Victimas y otra de Hechos, para los dos Datasets. 
Utilizamos Pandas para crear dataframes por cada hoja y cada base, para luego tratar y hacer un analisis introductorio de las bases, como cuales son sus columnas, buscar si las bases tienen valores duplicados y de ser asi borrarlos, buscar valores nulos y en caso de encontrarlos tomar una desicion de como tratarlos.


## Analisis de Informacion

En el Proceso de EDA (Análisis Exploratorio de los datos) Realizamos un analisis de las bases ya tratadas previamente en el ETL, buscando relaciones de variables numericas y categoricas, analizando las columnas y viendo cuales nos son utiles para el analisis, busqueda de valores atipicos o anomalias en los datos presentados y generar graficos para empezar a analizar la informacion y encontrar relaciones e informacion que nos sirva para el reporte.

Con las bases limpias, procedemos a analisar la informacion que contienen y buscar relaciones y tendencias para luego su analisis mas profundo en el reporte en Power BI.

- El primer analisis que hice fue el de correlacion de las columnas numericas para identificar si hay relacion entre los datos numericos
  

![Mapa Correlacion](https://github.com/Frombini/Proyecto-Siniestros-Viales/blob/main/Imagenes/Graficos%20Python/Captura%20de%20pantalla%202023-12-06%20012207.png)


![Mapa Correlacion](https://github.com/Frombini/Proyecto-Siniestros-Viales/blob/main/Imagenes/Graficos%20Python/Captura%20de%20pantalla%202023-12-06%20012217.png)


Podemos ver relaciones esperadas como la de comuna y la altura de la calle, tambien comuna con posx(Longitud) y posy(Latitud).
Las demas correlaciones son negativas o casi tendiendo a 0 lo cual indica que no tienen correlacion directa entre si


- Luego realize histogramas para variables numericas del dataset y poder ver las tendencias y relaciones de los datos.



Podemos ver en este histograma que en la mayoria de los casos de accidentes, el numero de victimas por accidente en su mayoria es de 1, salvo contados accidentes donde muere mas de 1 persona en un accidente.



En este histograma vemos la cantidad de muertes en el periodo que contiene el dataset desde el año 2016 al 2021, distribuido año a año.
Podemos ver que el año con mas accidentes de transito con victimas fatales fue el 2018



En este grafico de barras podemos ver la cantidad de accidentes por mes.
Vemos en que en los meses de Noviembre y Diciembre los accidentes fatales aumentan considerablemente.



Con este histograma podemos ver los horarios donde mas accidentes de transito se producen.
Vemos que en los horarios de 6 a 8 de la mañana se producen mas accidentes de transito fatales.


- Continue generando gráficos de barras para variables categóricas.



En este grafico de barras podemos analizar la cantidad de accidentes producidos en las 4 categorias de calles que tenemos, Avenida, Gral. Paz, calle y autopista.
Se puede ver que en la Avenidas, especialmente en los cruces, los accidentes son mas propensos, podemos deducir que es porque las avenidas son conexiones con alto transito y conectan varias comunas de la ciudad.



En este grafico podemos ver la distribucion de muertes por accidentes de transito por comunas.
Vemos que las comunas con mas accidentes de transito mortales son las Comuna 1, 4 y 9.



En este grafico de barras podemos analizar la cantidad de accidentes mortales, segun el tipo de Victima durante el 2021 que es nuestro ultimo año con informacion.
Se puede ver que los accidentes de transito mortales en Motocicletas es grande con un 47% del total de los accidentes. Lo sigue de cerca los accidentes de transito moratles involucrando Peatones con un 34%.
Porcentaje de Accidentes Mortales por Tipo de Víctima (2021):
MOTO: 47.42%
AUTO: 11.34%
PEATON: 34.02%
BICICLETA: 6.19%
PASAJEROS: 1.03%



En este grafico podemos ver en comparacion con el año 2021 la cantidad e homicidios por accidentes de transito en el año 2020.
Porcentaje de Accidentes Mortales por Tipo de Víctima (2020):
MOTO: 34.62%
AUTO: 14.10%
PEATON: 43.59%
BICICLETA: 6.41%



Este es el mapa de calor que hice para ver cuales son las zonas con mayor concentracion de homicidios por accidentes de transito.
Se pueden Ver que las comunas que mas Homicidios por accidentes tienen son la Comuna 1 ( barrios de Retiro, San Nicolás, Puerto Madero, San Telmo, Montserrat y Constitución), 4 (barrios de La Boca, Barracas, Parque Patricios y Nueva Pompeya) y 9 ( barrios de Liniers, Mataderos y Parque Avellaneda.). Para ver mejor el mapa de calor, revisar el EDA.ipynb donde se puede ver el mapa interactivo.



Por ultimo podemos ver la relacion entre el sexo de las victimas por accidentes.


- Analisis de Outliers



Podemos analizar con los graficos box plots vistos anteriormente, que no parace haber valroes atipicos u outliers.
Se puede ver que por ejemplo los accidentes en el campo 'ROL', podemos ver que la media se maneja entre conductor, pasajero_acompañante, peaton y ciclista mas alejado con menos frecuencia pasan.
En numero de victimas podemos ver que auto, moto y peaton son los mas frecuentes y pasajeros y movil los menos frecuentes.
En el campo sexo, se ve la diferencia que hay de accidentes de transito con personas del sexo masculino, con el de sexo femenino.
Se puede llegar a la conclusion de que no hay valores atipicos

- Conclusiones Preliminares:

Resumiendo lo visto en los graficos y descripciones que hicimos en los datasets, podemos ver que no se encontraron outliers o valores atipicos.

En la mayoria de los casos de accidentes, el numero de victimas en casi su totalidad es de 1, salvo contados accidentes donde muere mas de 1 persona.

En la distribuicon de numero de victimas por año vemos que en el periodo dado de 2016 a 2021 los accidentes fueron decreciendo encontrando sus picos mas altos en 2016 y 2018.

Tenemos que contemplar que en el año 2020 fue la pandemia de Covid19 y hubo Restricciones de movilidad durante un periodo largo en meses.

Podemos ver que en los meses de noviembre y diciembre los accidentes son mas frecuentes

Los horarios con mas accidentes son los de la mañana en promedio entre las 6 y las 9 de la mañana, en la tarde de 15 a 17 hs y a la noche de 23 a 1 horas

Podemos ver que la mayor cantidad de accidentes se producen en las avenidas, esto se debe a su alto transito y conexiones a diferentes calles

las comunas con mayores accidentes moratales son las comuna 1, 4 y 9 respectivamente

los accidentes de transito con moto son los que tienen mas mortalidad, luego le sigue el peaton
Porcentaje de Accidentes Mortales por Tipo de Víctima (2021):MOTO: 47.42% - PEATON: 34.02%
Porcentaje de Accidentes Mortales por Tipo de Víctima (2020):MOTO: 34.62% - PEATON: 43.59%

La mayoria de accidentes de transito con victimas fatales suelen ser del sexo masculino aproximadamente 4 veces mayor que la cantidad del sexo femenino


## KPI'S

Se nos propuso hacer 2 KPI'S que nos solicitaron e crear 1 para la practica del proyecto.
Los KPI'S son los siguientes:

KPI 1: Reducción del 10% en la tasa de homicidios en siniestros viales en CABA en comparación con el semestre anterior.
Definimos a la tasa de homicidios en siniestros viales como el número de víctimas fatales en accidentes de tránsito por cada 100,000 habitantes en un área geográfica durante un período de tiempo específico. Su fórmula es: (Número de homicidios en siniestros viales / Población total) * 100,000

KPI 2: Reducción del 7% en la cantidad de accidentes mortales de motociclistas en CABA en el último año en comparación con el año anterior.
Definimos a la cantidad de accidentes mortales de motociclistas en siniestros viales como el número absoluto de accidentes fatales en los que estuvieron involucradas víctimas que viajaban en moto en un determinado periodo temporal. Su fórmula para medir la evolución de los accidentes mortales con víctimas en moto es: (Número de accidentes mortales con víctimas en moto en el año anterior - Número de accidentes mortales con víctimas en moto en el año actual) / (Número de accidentes mortales con víctimas en moto en el año anterior) * 100

KPI 3: Reducción 10% las muertes por accidentes de tránsito de personas jóvenes (de 18 a 29 años) durante los fines de semana en CABA en el ultimo año en comparacion al anterior.
Definimos a la tasa de homicidios en siniestros viales como el número de víctimas fatales en accidentes de tránsito en el rango etario de 18 a 29 años, en los dias del fin de semana(Viernes, Sabado y Domingo) por cada 100,000 habitantes en un área geográfica durante un período de tiempo específico. Su fórmula es: (Número de homicidios en siniestros viales / Población total) * 100

Para el desarrollo de estos KPI'S utilizamos los ultimos datos que tenemos en el dataset que corresponde al 2021.
Para la comparacion de los mismos para ver si se llego a la metrica solicitada, se compararon con el año 2019 ya que le año 2020 fue un año atipico con restriccion de movilidad por la pandemia de Covid.



Podemos ver que alcanzamos la meta de los dos primeros KPI's, en el caso del primero reduciendo un 11% la tasa de homicidios en siniestros viales en CABA en comparación del Segundo semestre de 2021 con el semestre anterior y  Alcanzamos la meta de Reducción en la cantidad de accidentes mortales de motociclistas en CABA en el año  2021 en un 8% en comparación con el año 2019.
Para el 3er KPI propuesto, no solo no alcanzamos la meta propuesta, sino que hubo un aumento de 32% respecto del año 2021 y 2019. Es una consideracion a tomar y vamos a tratar de proponer algunas soluciones para poder bajar esta tasa y en proximos años a analizar poder llegar a nuestro objetivo.


## Conclusiones
Para mayor informacion ver la seccion de links, donde se encuentran los archivos del proyecto, la presentacion de Power Bi y otros.

Link al Reporte hecho en POWER BI : 


- A partir del analisis que hice de los datos, tendencias, relaciones y graficos que realice tanto en Python y en Power BI se puede sacar las siguientes conclusiones:

Se contabilizaron un Total de 715 Homicidios por accidentes de transito en el rango de los años 2016 al 2021.

De esas 715 muertes el 77% son de sexo Masculino.

El año con mayor cantidad de Homicidos por Accidentes fue el 2018 con 148 muertes.

Las comunas que mas Homicidios por accidentes tienen son la Comuna 1 ( barrios de Retiro, San Nicolás, Puerto Madero, San Telmo, Montserrat y Constitución), 4 (barrios de La Boca, Barracas, Parque Patricios y Nueva Pompeya) y 9 ( barrios de Liniers, Mataderos y Parque Avellaneda.).

Los meses con mas Homicidios por accidentes son Noviembre y Diciembre.

42% de los accidentes con victimas fatales son en Motos.

35% de los accidentes con victimas fatales son Peatones.

60% de los accidentes suceden en avenidas, con un 85% de ellos en una esquina o cruce.

El día con mayor cantidad de accidentes es el Lunes.

Los horarios con mas accidentes son entre las 6 y 8 de la mañana.

- Estas son posibles soluciones que propongo para abordar la problematica de los homicidios en accidentes de transito:

Continuar monitoreando los 3 Kpis propuestos.

Reforzar los controles de transito para los dias Viernes, Sabado, Domingo y Lunes.

Generar una campaña de concientización para prevenir los accidentes en las avenidas y cruces.

Realizar prevencion sobre las personas de Sexo Masculino, en especial a los jovenes de 18 a 39 años.

Generar un proyecto con legisladores de la provincia en conjunto con el observatorio y presentarlo en la legislatura bonaerense para crear un programa de educación integral obligatorio sobre adicciones y seguridad vial enfocado en los primeros años que los jovenes sacan el registro de conducir.

Generar una campaña de Prevencion de accidentes en motociclistas y peatones que son los que tienen mayor riesgo.

Hacer enfasis en el control de las comunas 1 , 4 y 9 que son las comunas con mayor indice de accidentes de transito mortales.

## Links



## Tecnologias usadas

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)
![Firefox](https://img.shields.io/badge/Firefox-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white)
![Google Drive](https://img.shields.io/badge/Google%20Drive-4285F4?style=for-the-badge&logo=googledrive&logoColor=white)
![Microsoft](https://img.shields.io/badge/Microsoft-0078D4?style=for-the-badge&logo=microsoft&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
