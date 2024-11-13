#ACTIVIDAD.

#cargar una base de datos 
#"h=T" significa que los encabezados de cada columna son considerados nombres 
datos<- read.table(file.choose(),h=T)
head(datos)   # muestra las primeras lineas de los datos 


# Crear vector con los meses para despues reemplazae en el eje x 
meses<-c("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep",
         "Oct","Nov","Dic")
library("ggplot2")

p34<-ggplot(datos, aes(x=factor(Year), y=Valor, colour=factor(Mes), group=factor(Year))) + geom_boxplot()+ scale_x_discrete(labels=meses)
p34

p45<-ggplot(datos, aes(x=factor(Year), y=Valor, colour=factor(Clima), group=factor(Municipio))) + geom_boxplot()+ scale_x_discrete(labels=meses)
p45


p90<-ggplot(datos, aes(x=factor(Year), y=Valor, colour=factor(Clima), group=factor(Municipio))) + geom_boxplot()
p90
p90+labs(x="mes", y="Temperatura(°C)")

# Grafica 1 

darly<- ggplot(datos, aes(x=factor(Mes), y=Valor, fill=Clima)) +
  geom_area(alpha=0.6, size=0.5, colour="black") +
  scale_fill_manual(values=c("red", "skyblue")) +
  labs(title="Temperatura Mensual por Región",
       x="Mes",
       y="Temperatura (°C)",
       fill="Clima") +
  scale_x_discrete(labels=c("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic")) +
  theme_minimal()
darly

# Cargar librerías
library(ggplot2)

# Crear el gráfico
gg<- ggplot(datos, aes(x=Year, y=Valor, fill=Región)) +
  geom_area(alpha=0.6, size=0.5, colour="black") +
  scale_fill_manual(values=c("red", "skyblue")) +
  labs(title="Temperatura Anual por Región",
       x="Año",
       y="Temperatura (°C)",
       fill="Tropical") +
  theme_minimal()
gg
