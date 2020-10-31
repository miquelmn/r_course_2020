" Introducción al entorno de cálculo estadístico R.
  Third session - Dataframes
  AUthor: Miquel Miró Nicolau 

  In this script we study the basic function to handle 2D data. We present dataframes and the 
  functions to handle this special type of data structure, using the IRIS dataset.
"


# We read the data from the R repository
data(iris)
iris

# We show the initial and last 10 elements of the dataframe
head(iris, 10)
tail(iris, 10)

# Some initial study of the data. We get the name of the columns, the dimension
# of the dataframe and an statistical resume.
names(iris)
dim(iris)
summary(iris)

# We access to the information on the dataframe by an index
col_3_6 = iris[3,6]
col_5 = iris[5,]

# We get a column by its name.
iris$Species

# We make logical selections
iris[iris$Petal.Length > 2, ]
iris[iris$Petal.Length == 4.5, ]

# We select intervals
iris[3:5,]
setosas = iris[iris$Species == "setosa", ]

# Aplying function to some columns
mean(setosas$Sepal.Length)
max(setosas$Petal.Width)

# GUI editor for dataframes
fix(iris)

# Build a new dataframe from scratch
edat = c(18,25,67,32,4)
sexe = c("home", "dona", "dona", "home", "dona")
germans = c(2 , 1, 0 ,0 ,1)
df.persones = data.frame(edat, sexe, germans)

# Adding columns to an existing dataframe
df.persones$pes = c(75,62,97, 48, 25)
df.persones$altura = c(175, 165, 189, 161, 100)

# Adding rows to an existing dataframe
df.persones = rbind(df.persones, c(56, "dona", 1, 75, 180))

# Special function to be able to group information by a column value
aggregate(df.persones$pes~df.persones$sexe, FUN = max)



