 library(readxl)
 DATOSV19s <- read_excel("C:/Users/Ricardo/Desktop/DATOSV19s.xlsx")
 View(DATOSV19s)
 
 install.packages(dplyr)
 library(dplyr)
 install.packages("tidyr")
 library(tidyr)
 
 names(Datos1)[11] <- paste("Numero Exterior o Aproximado")
 names(Datos1)[11]
 names(Datos1)[18] <- paste("Medicamentos Faltantes")
 names(Datos1)[19] <- paste("Medicamentos Existentes")
 names(Datos1)[20] <- paste("Viveres Faltantes")
 names(Datos1)[21] <- paste("Viveres Existentes")
 names(Datos1)[22] <- paste("Herramientas Faltantes")
 names(Datos1)[23] <- paste("Herramientas Existentes")
 names(Datos1)[24] <- paste("Mano de Obra Faltante")
 names(Datos1)[25] <- paste("Mano de Obra Existente")
 Datos1 <- Datos1[,-(26:27)]
 install.packages("stringr")
 library(stringr)
 
 
 