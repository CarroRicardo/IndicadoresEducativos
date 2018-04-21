

PercepSPD <- read_dta("C:/Users/Ricardo/Desktop/PercepSPD.dta")
View(PercepSPD)
library("dplyr")

tabla1 <- table(PercepSPD$p19, PercepSPD$p20)
prop.table(tabla1)
prop.table(tabla1, 2) #condicionando las columnas
prop.table(tabla1, 1) #condicionando las filas

ggplot(PercepSPD, aes(x = p19))+ geom_bar()

#sesion 2

unique(PercepSPD$p19)
prueba1 <- PercepSPD
prueba1 <- subset(prueba1, select = c(39,40,41,42,43)) #reactivos de la parte B de la encuesta


# emepezando el analisis de regresion
for(i in 1:length(prueba3$p20)){
  
  if(prueba3$p20[i] == " Si "){
    prueba3$p20[i] <- 1
  }else{
    if(prueba3$p20[i] == " No "){
      prueba3$p20[i] <- 0
    }else{
      prueba3$p20[i] <- -1 #no estoy seguro si asi es
    }
  }
}

for(i in 1:length(prueba3$p20)){
  if(prueba3$p20[i] == -1){
    prueba3$p20[i] <- NA
  }
}

#asigno valores a las variables categoricas
for(i in 1:length(prueba3$p19)){
  if(prueba3$p19[i] == " Muy satisfecho "){
    prueba3$p19[i] <- 3
  }
}
#vuelvo a copiar muchas veces el for para cambiar los valores
prueba2 <- prueba3

prueba3$p19 <- as.numeric(prueba3$p19) 
prueba3$p20 <- as.numeric(prueba3$p20)
mylogit <- glm(p20~p19, data = prueba3)







