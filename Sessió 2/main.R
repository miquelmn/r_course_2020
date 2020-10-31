" Introducción al entorno de cálculo estadístico R.
  Second session - Vectors
  AUthor: Miquel Miró Nicolau 

  In this script we study the basic function to handle 1D data. We present vectors and the 
  functions to handle this special type of data structure
"

# Building a vector from multiple values
v = c(4,8,15,16,23,42)

# Multiples ways to acces to the information of the vectors
v[1]
v[2]
v[2:5]
v[v < 16]

# Concatenation of new values
v2 = c(c(56, 32), v) 
v2[v2 > 30]

# Special functions for the vectors

llargaria = length(v2)
v2[llargaria]
darrer = v2[length(v2)]

mes_gran = max(v2)
mes_petit = min(v2)

mitjana = mean(v2)
darrer_valor = v2[length(v2)]

# Build a vector easily with the function seq. 
v3 = seq(1, 10, 0.01)

# We add datat non ordered and we sort the vector
v2[1] = 4
v2[4] = 89

v2 = sort(v2, decreasing=TRUE)

# Applying math functions
v2 = v2 + 2
v2 = v2 - 2
v2 = v2 / 2
sin(v2)

# We build a function an we aplied to a vector
my_funct = function(vect){
  vect = vect * vect
  vect = vect + 4
  vect = vect / 5
  
  return(vect)
}

v2_res = my_funct(v2)
plot(v2)
plot(v2_res)

plot(sin(v3))


# We read a vector from a txt file.
notes = scan("notas.txt", sep=",")
