## Lo primero que uno hace es borrar las variables que hay en el espacio de trabajo antes de comenzar a trabajar, esto se hace para evitar que cometamos el error de usar variables asignadas de trabajos anteriores y que por tanto nos funcione el cosigo pero no como deberia

rm(list = ls())  #Borrar variables del area de trabajo

#se pueden paralelizar las asignaciones

#se pueden asignar procesos
rm(list = ls())
a <- 5
b <- 12

p <- (a+b) / 2
p

rm(list = ls())

p <- function(a, b){
  return((a + b) / 2)
}

a <- 5
b <- 12

p(a, 4) -> val
val

####################

tabla <- data.frame(
  ciudad = c("A", NA, "C", "D", "E"),
  sabor = c("vainilla", "chocolate", "vainilla", NA, "Fresa"),
  cantidad = c(5, 10, NA, 12, NA)
)

#funcion para contar la cantidad de valores faltantes en una tabla cualquiera
numNA <- function(x){ 
  return(sum(is.na(x))) 
}
numNA(tabla)


#funcion para contar la cantidad de valores no faltantes en una tabla cualquiera
numnotNA <- function(x){ 
  return(sum(!is.na(x))) 
}
numnotNA(tabla$ciudad)

sample(2:8, 2) #funcion sample para obtener un valor aleatorio entre 2 y 8

#funcion que simule el lanzamiento de dos dados
lanzarDados <- function(){
  dado1 <- sample(1:6, 1)
  dado2 <- sample(1:6, 1)
  return(c(dado1, dado2))
}
lanzarDados()


#funcion que simule el lanzamiento de dos dados y cuente cuantas veces se lanza hasta obtener un par de dados iguales

LanzarDadosIguales <-function(){
  lanzamientos <- 1
  dado1 <- sample(1:6, 1)
  dado2 <- sample(1:6, 1)

  while(dado1 != dado2){
    lanzamientos <- lanzamientos + 1
    dado1 <- sample(1:6, 1)
    dado2 <- sample(1:6, 1)
  }
 
  return(lanzamientos)
}

#Ejemplo de uso
lanzarDadosHastaIguales()



x <- c(5, 2, 4, 8, 1)
y<- c(0, 0, 0, 0, 0)
i <- 5

while(i > 5){
  y <- 0
  i <- i-1
}
y
