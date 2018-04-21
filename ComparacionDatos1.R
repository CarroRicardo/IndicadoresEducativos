install.packages(dplyr)
library(dplyr)
install.packages("tidyr")
library(tidyr)
library(readxl)
Base_Tres_niveles_Dic_17_ <- read_excel("~/DATALAB proyecto/Base_Tres niveles (Dic 17).xls")
View(Base_Tres_niveles_Dic_17_)
library(stringr)

# con esto puedo ver cuantos NA hay en cada columna
# sum(str_detect(Base_Tres_niveles_Dic_17_$p10,"NA"))

#Auto-Imagen del docente
#checamos que todos los profesores encuestados hayan contestado
# unique(DataSet$p21_otro)
#checar que es lo que tengo y puedo comparar
