
#### Task 1 ####
N <- 5613

# Write a program to check whether N is odd or even (0.5 points)

#use modulo operator to check if the number is even or odd
#if reminder is 1 number is odd otherwise even
if (N %% 2 == 1) {
  print("odd")
} else {
  print("even")
}




#### Task 2 ####
numbers <- c(14,11,18,12,17,16,19)

# Write a program to check whether numbers are odd or even (0.5 points)
result <- character(length(numbers)) #empty vector of length of numbers in a vector "7"

# Loop through each number
#apply the same logic as task 1 and print result for each number 
for (i in 1:length(numbers)) {
  if (numbers[i] %% 2 == 1) {
    result[i] <- "odd"
  } else {
    result[i] <- "even"
  }
}

# Print the result vector
print(result)





#### Task 3 ####
seq <- c(886,926,408,800,651)

# Write a program using a loop to print the square of the elements of the vector (0.5 points)

#Loop through each number and use power to 2 "^2" to get square of each element
for (num in seq) {
  print(num^2)
}





#### Task 4 ####
temperature <- c(19, 9, 2, 0, 26, 13)

# Formula : f = c*1.8 + 32
# where c = temperature in Celsius 
# and f = temperature in Fahrenheit

# write you code below  (0.5 points)

#3 steps
#1. Loop through each number in the vector
#2. convert the given value to Fahrenheit and store in f variable
#3. print the current result
for (c in temperature) {
  f <- c * 1.8 + 32
  print(f)
}




#### Task 5 ####
score <- 100

# Write a program in R to print a message 'Test is passed successfully' while score > 3 (0.5 points)
#method 1
#Use while loop until the condition is satisfied, decrements the number by 1 after each iteration
#once the condition fails i.e score values becomes 3, loop stops
#we can also verify the score value in the global environments, it's 3
while (score > 3) {
  print("Test is passed successfully")
  score <- score - 1
}

#method 2

#we can use for loop to print the same thing
score <- 100 #set 100, since it's 3 from previous iteration
#now our end value will be 4(inclusive) and start value is 100
for (i in score:4) {
  print("Test is passed successfully")
}





#### Task 6 ####
p <- 15
# write you code below  (0.5 points)

#this task can be done using the same logic as task 3 
#instead of using ^2 we put ^3 which means power of 3
#we use either while loop or for loop to iterate upto number 10
#loop will stop since the condition is false
while (p > 10) {
  print(p^3)
  p <- p - 1
}





#### Task 7 ####
list_of_numbers <- c(30,21,39,31,22,34,30,20,21,37,40,45,28,
                     35,45,26,44,25,37,40,31,28,35,44,27,32)

# Write a program in R to print the sum of the odd number (1 point)
#method 1
odd_sum <- 0 #initialize odd sum to 0

# Use a for loop to iterate through the list
for (num in list_of_numbers) {
  #check if the number is odd
  if (num %% 2 == 1) {
    #sum the odd number with the obtained odd sum till now
    odd_sum <- odd_sum + num
  }
}

print(odd_sum) #print result

#method 2
#use the sum function to calculate the odd sum
#by using the logical expressions we can find which number are odd 
odd_sum <- sum(list_of_numbers[list_of_numbers %% 2 == 1])
print(odd_sum)





#### Task 8 #### 
list_of_numbers <- c(30,21,39,31,22,34,30,20,21,37,40,45,28,
                     35,45,26,44,25,37,40,31,28,35,44,27,32)

# write your code below  (1 point)
#same logic as above but this time check if reminder is 0
even_sum <- 0 #initialize odd sum to 0

# Use a for loop to iterate through the list
for (num in list_of_numbers) {
  #check if the number is even
  if (num %% 2 == 0) {
    #sum the even number with the obtained even sum till now
    even_sum <- even_sum + num
  }
}
print(even_sum)

#test if total sum is correct.
total <- even_sum+odd_sum
print(total)
print(sum(list_of_numbers))

#method 2 same as odd numbers
even_sum <- sum(list_of_numbers[list_of_numbers %% 2 == 0])
print(even_sum)




#### Task 9 ####
test_score <- c(4,7,10,9,1,8,8,6,9,4,8)

# write your code below (1 point)
#Loop through each element in the vector
for (score in test_score) {
  #check if score is >= 8 
  if (score >= 8) {
    print("You passed the course with flying colors")
  } else if (score >= 6) { #check if score is >= 6
    print("You passed the course well")
  } else if (score >= 4) { #check if score is >= 4
    print("You passed the course satisfactorily")
  } else { #check if score is otherwise
    print("Sorry, you didn't pass the course")
  }
}



 
#### Task 10 ####
list_of_numbers <- c(30,21,39,31,22,34,30,20,21,37,40,45,28,
                     35,45,26,44,25,37,40,31,28,35,44,27,32)
number <- 30

# Write a program to count how many times a given number appears in a vector. (1 point)
# Clue: the solution of the task is similar to solution for Task 2 in the presentation (slide 29)

#We can solve it using for loops or by using sum function
count <- 0 #store the count to 0 intially

#Loop through vector
for (i in list_of_numbers){
  #check if number 30 matches any number in the vector
  if(i==number){
    #increment the number by 1
    count <- count+1
  }
}

print(count)#print result


#method 2
#use a sum function on a logical expression which checks any number is 30
count <- sum(list_of_numbers == number)
print(count)





#### Task 11 (optional) ####
# function 
readinteger <- function(){
  n <- readline(prompt="Please, enter your ANSWER: ")
}
# see how it works 
response <- as.integer(readinteger())

# write your program below (1 point)

#check for the condition must be true for the first time
while (response != 45) {
  #call the function again and read the number and store it's value
  response <- as.integer(readinteger())
  #check if the response matches the correct answer
  if (response != 45) {
    #print the statement for wrong response
    print("Sorry, the answer to the question MUST be 45")
    
  }else{
    #print this statement and after this loop will break
    print("Wow, it took you so long to enter the correct answer:)")
  }
  
}


