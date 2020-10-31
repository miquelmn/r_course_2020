" Introducción al entorno de cálculo estadístico R.
  Exercise - World Cup
  AUthor: Miquel Miró Nicolau 

  In this script we practice the functions seen to handle a dataframe. Furthermore we introduce the use of 
  the read.table function to be able to get the information from a text file. We want to study the passes
  information for the players
"
# Reading the data from text file.
copa = read.table("CopaFutbolMundial.txt", header=TRUE)

# We get basic information of the data.
summary(copa)
str(copa)

# Getting the first row and the first column
copa[1,]
copa$Passes

# Plotting the passe information
plot(copa$Passes)
hist(copa$Passes)

# To improve the plots we get the players that at least had played one match.
copa_jugats = copa[copa$Time >= 90, ]
hist(copa_jugats$Passes)

# New column, proportion between passes and shots
copa$propor = copa$Passes / copa$Shots

# We remove inf values.
copa_sense_inf = copa[copa$propor != Inf, ]

# Selection of the pplayers with higher number of passes than the mean
molts_de_pases = copa_jugats[copa_jugats$Passes > mean(copa_jugats$Passes), ]

# Wich player have done the most passes
max_pases = max(molts_de_pases$Passes)
molts_de_pases[molts_de_pases$Passes == max_pases, ]

# We check vissually the players
fix(molts_de_pases)

# Defender with maximum number of passes 
defender = copa[copa$Position == "Defender", ]
max(defender$Passes) + 1