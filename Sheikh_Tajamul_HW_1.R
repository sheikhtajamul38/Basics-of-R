
#### Task 1 ####
tomato_price <- 220
tomato_kilo <- 5

# write a program to calculate the total price (0.5 points)

total_price <- tomato_price * tomato_kilo #price of 1kg tomato multiplied by total weight of tomatoes

print(total_price) #printing the result, should be 1100


#### Task 2 ####
# 1 - useful; 0 - not
score <- c(0,0,1,1,1,1,0,0,1,0,0,0,0,1,0,1,1,1,0,1,0,0,0,0,1,0,1,0,
           0,1,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,1,1)

# write a program to calculate the percentage of those who find a new feature useful (0.5 points)

useful_feature <- sum(score) # This line will calculate the number of useful features
total_features <- length(score) # Calculates the total number of features in a vector
useful_per <- (useful_feature / total_features) * 100 # Calculates the percentage of new useful features
print(useful_per)


#### Task 3 ####
total_number <- 30
female <- 18

# write a program to calculate the percentage of males in the audience (0.5 points)
male <-total_number - female #subtracting females from total audience
male_per <- (male/total_number)*100 #dividing males by total audience to get male percentage
print(male_per)

#### Task 4 ####
# create all the variables needed to calculate your average score yourself 

# Write a program to calculate your average score (0.5 points)

first_hw <- 9   #store homework 1 score
second_hw <- 7  #store homework 2 score
third_hw <- 10  #store homework 3 score

avg <- (first_hw+second_hw+third_hw)/3 #sum all the homework points divide by total number of homework

print(avg) #print average homework result


#### Task 5 ####
# create all the variables needed to solve the task 

# Write a program to calculate the final grade (0.5 points)

test_score <- sample(30:90, 1) #get a different random number between 30 and 90
homework_1 <- sample(30:90, 1)
homework_2 <- sample(30:90, 1)

# Calculate the mean score for the two homework assignments
mean_score <- (homework_1 + homework_2) / 2

# Calculate the final grade
final_grade <- 0.4 * mean_score + 0.6 * test_score

print(final_grade) #print result
  
#### Task 6 ####
prices <- c(84,159,2,163,47,23,158,171,37,137,200,160,119,91, 
            46,29,79, 90,147,81,32,36,54,78,125,69,57,131, 
            146,56, 51,107,71,184,128,156,87,9,12,97)
# Write a program to select prices that are greater than $55 (0.5 point)

prices_greater <- prices[prices>55] #logical operation which checks if the number is greater or not and then stores it

print(prices_greater) #print result


# Write a program to select prices that are less than or equal to $160. (0.5 point)

prices_smaller <- prices[prices<=160] #logical operation which checks if the number is smaller/equal or not and then stores it

print(prices_smaller) #print result

#### Task 7 ####

age_1 <- c(30,45,21,45,39,31,22,34,30,20,21,37,40,45,28,
           35,45,26,44,25,37,40,45,31,28,35,30,44,27,32)
age_2 <- c(30,45,21,45,40,31,22,34,30,25,21,37,40,45,29,
           35,45,26,44,25,37,38,45,31,28,35,30,44,27,32)

# write your program below  (1 point)
is_present <- age_2 %in% age_1 #checks for each value of age_2 if it exists in age_1, logical operation

opposite <- !is_present #opposite of the above operation
different_values <- age_2[opposite] #values are selected from age_2 based on the logical vector obtained from the previous operation

print(different_values) #print result


#### Task 8 #### 
#  (1.5 points)

#creating student names
student_name <- c("Jack","Anton","Alex","Stas","Daniel")

#randomly get grades for the courses
statistics <- sample(0:10,5,replace = TRUE)
r_grade <- sample(0:10,5,replace = TRUE)
psychometrics <- sample(0:10,5,replace = TRUE)

#calculate average grade for 3 subjects

avg_grade <- (statistics+r_grade+psychometrics)/3

#using the names unction to assign student name to the average grade.
names(avg_grade) <- student_name

#printing the result
print(avg_grade)



#### Task 9 ####

min_score <- 10 #minimum score to pass the test

student_score <- 14 #student score in the test

# Write a program to check whether a student passes the test (1.5 points)

#control structure to check if the score is greater or equal to 10, prints success else fail
if(student_score>=min_score){
  print("The student passed the test successfully")
}else{
  print("The student did not pass the test")
}

#### Task 10 ####
#  (2 points)
name <- c("Jane", "John", "Jack", "Lidia", "Alina")
distance <- c(0.8, 3.1, 2.8, 5.0, 4.2)
time <- c(10, 30, 25, 50, 38)

# Write a program to convert time to hours. 
# Remember there are 60 minutes in an hour. (0.25 points) 
hour <- time / 60 # divide by 60 to get time in hours
print(hour)


# Write a program to calculate the speed of each runner in km per hour. 
# Remember, speed is distance divided by time. (0.25 points) 
speed <- distance / hour# distance by hour, since time is in hour 

# I recommend you give the elements of the speed vector names 
# using name vector and the names() function
names(speed) <- name #assign name to speed 
print(speed)


# Write a program to select how many hours Jack runs (0.5 points). 

jack_hours <- hour[name == "Jack"] #statement inside the []'s will be TRUE for name Jack  

print(jack_hours) #printing the hours jack runs

# Write a program to select the runner who showed the fastest speed (0.5 points)
# If you find a special R function to determine the highest speed, then 1 point

#search for the index of the maximum value 

max_ind <- which.max(speed) #which.max() function gives index or position of the maximum value

fastest_runner <- name[max_ind] #getting the name based on the index

print(fastest_runner) #print result


