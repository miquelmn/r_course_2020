" Introducción al entorno de cálculo estadístico R.
  Second session - Introduction
  AUthor: Miquel Miró Nicolau 

  In this script we take a first glance to the R syntax. We introduce the calculator, the if statement
  and the function building.
"

# Creation of the variable a with value 2
a = 2

# Adding variable a
a + a

b=a/4

# We show the value of a variable on the screen
print(b)

# We can read values from the keyboard.
pep = scan()
print(pep + 5)

# We use at the same time a print and a scan to have a basic interface
print("Give me a number")
c = scan()

# Conditional, depending on the value of C we print different things
if (c != 10){
  print("Higher than 10")
}else{
  print("Lower than 10")
}

# We use build-in function

abs(-a)
sin(a)
cos(a)
tan(a)
sqrt(a)

# We build our own function to make the absolute value
my_abs = function(x){
  if (x < 0){
    x = -1 * x
  }
  
  return(x)
}

my_abs(-2)


my_abs(-9)

# We build function to make the calculation of the area of a rectangle and a triangle

area_rectangle = function(a, b){
  area = a * b
  
  return(area)
}

area_rectangle(5,10)
area_rectangle(25,12)

area_triangle = function(a, b){
  area = (a * b)/2
  
  return(area)
}

area_triangle(5,10)
area_rectangle(5,10)

