df <- data.frame(x = 1:10, y = 11:20)

df$y[4]
df$y[1:5]

df$x[2:5]

b <- df$y[2:5]
b[3]

p <- df$y[2:(length(df$y)-1)]
p
mean(p)

df[,1] #todas las filas la primera columna

df[4,2]

df[ ,2][4]