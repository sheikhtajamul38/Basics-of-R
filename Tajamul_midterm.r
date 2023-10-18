#Task 11
#Method 1

# Create a function which takes two arguements and returns a result
sum_square <- function(a, b) {
  #use the formula given in the task to compute the square of sum of two numbers
  result <- (a + b)^2
  return(result) #return the result
}


a <- as.numeric(readline("Enter first number: ")) #ask user for the first number
b <- as.numeric(readline("Enter second number: ")) #ask for 2nd number
sum_square(a, b) #call the function and get the result

#Method 2
sum_square <- function(a, b) {
  #we can expand the formula and compute the result as shown below
  result <- a^2 + b^2 +2*a*b
  return(result) #return the result
}

# Example usage of the function
a <- as.numeric(readline("Enter first number: "))
b <- as.numeric(readline("Enter second number: "))
sum_square(a, b)


#Task 12

# Create a function which takes two arguements as lenght and width
rect_area <- function(a, b) {
  area <- a * b #area of rect is length x breadth
  return(area) #return then result
}

#prompt user to enter the input for lenght and width
a <- as.numeric(readline("Enter value for lenght: "))
b <- as.numeric(readline("Enter value for width: "))
rect_area(a, b) #getthe area of the input



#Task 13

# Create a function which takes radius as its input/arguement
circumference <- function(R) {
  circ <- 2*pi*R #use the formula from the task to compute the circumference
  return(circ)
}

# prompt user to enter the radius of the circle to compute the circumference
rad <- as.numeric(readline("Enter radius of the circle: "))
circumference(rad)


#Task 14

# create a function which takes one arguement as grades and returns the result based on the grade
#note that this code will only give correct result as asked in task if the values are from 0 to 10. <0 is not feasible ideally so...

get_grades <- function(grades) {
  
  #check if the grades are from 8(inclusive) to 10 and get the result
  
  if (grades >= 8 && grades <= 10) {
    
    message <- "You passed the course with flying colors"
    
  } else if (grades >= 6) { #this part of the loop will work if the number is either 6 or 7
    
    message <- "You passed the course well"
    
  } else if (grades >= 4) { # similarly this will work for 4 and 5
    
    message <- "You passed the course satisfactorily"
    
  } else { #if the number is less than 4 then we get this message
    
    message <- "Sorry, you didn't pass the course"
  }
  return(message) #return the message based on the grade value
}

# ask user to enter the grades 
grades <- as.numeric(readline("Enter your grades (0 to 10): "))  

get_grades(grades)



#Task 15

# create function which take 3 arguements 

find_roots <- function(a, b, c) {
  #compute the discriminant of the equation as shown below
  
  d <- b^2 - 4*a*c
  
  #now if d>0, that means equations has two roots
  
  if (d > 0) {
    
    #roots are comuted using the formula given in task
    
    x1 <- (-b + sqrt(d)) / (2*a)
    x2 <- (-b - sqrt(d)) / (2*a)
     
    result <- c(x1, x2) #store the roots in vector
    
  } else if (d == 0) { 
    #equation has only root if discriminant is 0, in that case we follow the formula below
    
    x1 <- -b / (2*a) 
    
    result <- x1 #store the single root obtained
    
  } else { #if the discriminant is less than 0 then we have so solution and return the same.
    
    result <- "The equation has no solutions"
  }
  return(result)
}

# enter value of a, b,c 
a <- as.numeric(readline("Enter value of 'a' in Quad. equation: "))
b <- as.numeric(readline("Enter value of 'b' in Quad. equation: "))
c <- as.numeric(readline("Enter value of 'c' in Quad. equation: "))

find_roots(a, b, c)


