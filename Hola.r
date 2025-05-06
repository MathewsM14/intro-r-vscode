
df <- data.frame(x = 1:10, y = 11:20)
# Calcula el promedio por columnas
promedios <- colMeans(df)

# Muestra los promedios
print(promedios)

# Crear un dataframe con 3 columnas y 100 filas
set.seed(123) # Fijar semilla para reproducibilidad
df <- data.frame(
  x = rnorm(100),          # Valores aleatorios decimales con distribución normal
  y = runif(100),          # Valores aleatorios decimales con distribución uniforme
  z = sample(1:100, 100, replace = TRUE) # Valores aleatorios enteros
)

# Mostrar las primeras filas del dataframe
head(df)