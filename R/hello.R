## hacer la multiplicacion de 2 números por sumas sucesivas
sum_suce<- function(b, a){
  suma1<- 0
  i<-1
  while(i<=b){
    suma1<- suma1+a
    i<- i+1
  }
  return(suma1)
}

sum_suce1<- function(b, a){
  suma1<- 0
  i<-1
  while(i<=a){
    suma1<- suma1+b
    i<- i+1
  }
  return(suma1)
}
#funcion recursiva
recursiva_suma<- function(a, b){
  if(a==0){
    return(0)
  } else{
    return(b+recursiva_suma(a-1, b))
  }
}
cat("Ingrese un número:\n")
a<- readLines(n=1)
a<- as.numeric(a)
cat("Ingrese otro número:\n")
b<- readLines(n=1)
b<- as.numeric(b)

c<- sum_suce(b, a)
c1<- sum_suce1(b, a)
cat("La multiplicación M1 es: ", c )
cat("\nLa multiplicación M2 es:", c1)

# Con recursividad (funcion recursiva)

################################################################################
suma_repetida <- function(a, b){
  if(b==0){
    return(0)
  }else{
    return(a+suma_repetida(a,b-1))
  }
}
#funcion recursiva para calcular la potencia con suma recursiva
potencia <- function(base, expo){
  if(expo==0){
    retunr(1)
  } else if(expo==1){
    return(base)
  } else{
    return(suma_repetida(base, potencia(base, expo-1)))
  }
}
base <- as.numeric(readline(prompt = "Ingrese la base: "))
expo<- as.numeric(readline(prompt = "Ingrese el exponente:"))
#Calcular y visualizar el resultado
result <- potencia(base, expo)
cat("Elk resultado de ",base, "elevado a la", expo, "es:", result)
#################################################################################
## hacer la multiplicacion de 2 números por sumas sucesivas
sum_suce<- function(b, a){
  suma1<- 0
  i<-1
  while(i<=b){
    suma1<- suma1+a
    i<- i+1
  }
  return(suma1)
}

sum_suce1<- function(b, a){
  suma1<- 0
  i<-1
  while(i<=a){
    suma1<- suma1+b
    i<- i+1
  }
  return(suma1)
}
#funcion recursiva
recursiva_suma<- function(a, b){
  if(a==0){
    return(0)
  } else{
    return(b+recursiva_suma(a-1, b))
  }
}
cat("Ingrese un número:\n")
a<- readLines(n=1)
a<- as.numeric(a)
cat("Ingrese otro número:\n")
b<- readLines(n=1)
b<- as.numeric(b)

c<- sum_suce(b, a)
c1<- sum_suce1(b, a)
cat("La multiplicación M1 es: ", c )
cat("\nLa multiplicación M2 es:", c1)

# Con recursividad (funcion recursiva)
#################################################################################
#sacar el factorial de un número
fact1 <- function(N){
  f<-1
  i<-1
  while(i<=N){
    f<- f*i
    i<-i+1
  }
  return(f)
}

f_recursiva <- function(N){
  if(N==0){
    return(1)
  } else{
    return(N*f_recursiva(N-1))
  }
}
cat("ingrese un número:\n")
N<- readLines(n=1)
N<- as.numeric(N)

f2<- fact1(N)
cat("El factorial de ",N," es: ", f2)
f3<- f_recursiva(N)
cat("\nCon recursividad es: ",f3)
###############################################################################
# Función para sumar utilizando sumas repetitivas
sumar <- function(a, b) {
  if (b == 0) {
    return(0)
  } else {
    return(a + sumar(a, b - 1))
  }
}

# Función para calcular el factorial utilizando sumas repetitivas
factorial_sumas <- function(n) {
  if (n == 0) {
    return(1)  # El factorial de 0 es 1
  } else {
    return(sumar(factorial_sumas(n - 1), n))
  }
}

cat("Ingrese un numero: \n")
a <- readLines(n=1)
a <- as.numeric(a)

f <- factorial_sumas(a)
cat("El factorial de: ",a, "es: ",f)
