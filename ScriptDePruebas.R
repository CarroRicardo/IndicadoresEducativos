prueba2 <- prueba1$p20

for(i in 1:length(prueba2)){
  
  if(prueba2[i] == " Si "){
    prueba2[i] <- 1
  }else{
    prueba2[i] <- 0
  }
}
table(prueba2)

prueba3 <- prueba1
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

prueba2 <- prueba1$p19

for(i in 1:length(prueba3$p19)){
  
  if(prueba3$p19[i] == " Nada Satisfecho "){
    prueba3$p19[i] <- 0
  }else{
    if(prueba3$p19[i] == " Poco Satisfecho "){
      prueba3$p19[i] <- 1
    }else{
      if(prueba3$p19 == " Satisfecho "){
        prueba3$p19[i] <- 2
      }else{
        if(prueba3$p19 == " Muy satisfecho "){
          prueba3$p19[i] <- 3
        }else{
          prueba3$p19[i] <- -1
        }
      }
    }
  }
}

for(i in 1:length(prueba3$p19)){
  if(prueba3$p19[i] == " No sabe/ No contesta"){
    prueba3$p19[i] <- NA
  }
}
prueba2 <- prueba3

prueba3$p19 <- as.numeric(prueba3$p19) 
prueba3$p20 <- as.numeric(prueba3$p20)
mylogit <- glm(p20~p19, data = prueba3)




