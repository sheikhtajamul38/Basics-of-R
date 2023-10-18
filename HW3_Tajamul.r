# Task 1

# Set the file path to the home directory, making sure both script and dataset are present
setwd("D:/HSE/R/")

#Read the data from the file
exam_data <- read.csv("exams.csv")




# Task 2

str(exam_data)

#Use head function to get top 6 rows
head(exam_data)

#Use tail function to get last 6 rows
tail(exam_data)




# Task 3

#Method 1 changing column names with dots to underscore.

# View original column names
print(names(exam_data))

#Use gsub function to change column names with dots to underscore
names(exam_data) <- gsub("[.]", "_", names(exam_data))

#Making sure all the column names are in lowercase
names(exam_data) <- tolower(names(exam_data)) 

#Method 2 checking all the conditions even though we only have column names with dots :)

# View original column names
print(names(exam_data))

# Column names to lowercase
colnames_lower <- tolower(names(exam_data))

# Replace dots, spaces, slashes, and commas with underscores
colnames <- gsub("[. /,]", "_", colnames_lower)

# Using regular expression to check if column names start with a number, then prefix with intitial name "col_"
colnames[grep("^[0-9]", colnames)] <- paste("col", colnames[grep("^[0-9]", colnames)], sep = "_")

# Assign the renamed column names back to the dataframe
names(exam_data) <- colnames

# View the modified column names
print(names(exam_data))





# Task 4

#View class type of col names
print(sapply(exam_data, class)) #we have integer and char class types

#Using as.factor() function we can convert the class types

exam_data$gender <- as.factor(exam_data$gender)#extract gender column and convert to factor

exam_data$parental_level_of_education <- as.factor(exam_data$parental_level_of_education)#same as above

#Modified class types
print(sapply(exam_data, class)) #we will now have integer, factor and char class types





# Task 5

#Method 1
#Take note of the values of these two columns

head(exam_data)
#Use order function to sort the data

#Sort data on test_preparation_course and store in new variable 
sorted_data <- exam_data[order(exam_data$test_preparation_course), ]

head(sorted_data)#we can see completed course in listed first now because of  lexicographic order

#Now sort the sorted_data on math_score and update the sorted_data
sorted_data <- sorted_data[order(sorted_data$math_score), ]
head(sorted_data) #now the data is ordered in ascending order with lowest math score 13

#Method 2

#We can use the arrange() function from the dplyr package to sort the data

library(dplyr) #load the package

head(exam_data) #view data

#Follow the same procedure as above and store in new variable
data_sorted <- exam_data %>% arrange(test_preparation_course,)

#Now sort the new data based on math_score
data_sorted <- data_sorted %>% arrange(math_score,)

head(data_sorted)

#we see that we are getting score in ascending order, if we want to print in descending order we simply use "desc()"






# Task 6

#Using the `$` operator and assigning the column name to NULL, we can remove the column
exam_data$lunch <- NULL

head(exam_data) #lunch column is removed

# Task 7

#MEthod 1
#We use the subset() function to filter the students who have completed a test preparation course
completed_prep <- subset(exam_data, test_preparation_course == "completed")

head(completed_prep)#new data with only students who completed their preparation


#Medthod 2

#Use filter function from dplyr package to create the date with students who completed their preparation
completed_prep1 <- exam_data %>% filter(test_preparation_course == "completed")
head(completed_prep1)





# Task 8

#Method 1
#Same logic as above use logical operator to filter the data
high_reading_val <- subset(exam_data, reading_score >= 70)
head(high_reading_val)

#Method 2
high_reading_val1 <- exam_data %>% filter(reading_score >= 70)
head(high_reading_val1) #same output





# Task 9

#Method 1

#Simply using the table function to get the result
race_ethnicity_dist <- table(exam_data$race_ethnicity)
print(race_ethnicity_distribution)


# Using groupby() function to group the data by the race_ethnicity variable.
# Summarize() calculates the count of observations (students) in each group with new column count.

race_ethnicity_dist1 <- exam_data %>%
   group_by(race_ethnicity) %>%
   summarise(count = n())
print(race_ethnicity_dist1)





# Task 10

#Method 1

#Use mean function to get the result.
mean_math <- mean(exam_data$math_score, na.rm = TRUE)
mean_reading <- mean(exam_data$reading_score, na.rm = TRUE)
mean_writing <- mean(exam_data$writing_score, na.rm = TRUE)
# Assuming you have already calculated the mean scores
cat("Mean Math: ", mean_math, ", Mean Reading: ", mean_reading, ", Mean Writing: ", mean_writing, "\n")

#Method 2 

#Calculate the mean and then group them using summarize
mean_score <- exam_data %>%
  summarize(
    mean_math = mean(math_score),
    mean_reading = mean(reading_score),
    mean_writing = mean(writing_score)
  )

print(mean_score)

#We can use mutate function to round the mean scores to two decimal places.
mean_score <- mean_score %>%
  mutate(
    mean_math = round(mean_math, 2),
    mean_reading = round(mean_reading, 2),
    mean_writing = round(mean_writing, 2)
  )

print(mean_score)

library(ggplot2)

race_counts <- exam_data %>%
  group_by(race_ethnicity) %>%
  summarize(count = n()) %>%
  arrange(desc(count))

# Create a bar plot
ggplot(race_counts, aes(x = reorder(race_ethnicity, -count), y = count)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(x = "Race Ethnicity", y = "Number of Students", title = "Number of Students by Race Ethnicity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))




p1 <- ggplot(exam_data, aes(x = reading_score)) +
  geom_histogram(binwidth = 10, fill = "purple", color = "black") +
  labs(x = "Reading Score", y = "Frequency", title = "Reading Score Distribution")

p2 <- ggplot(exam_data, aes(x = writing_score)) +
  geom_histogram(binwidth = 10, fill = "red", color = "black") +
  labs(x = "Writing Score", y = "Frequency", title = "Writing Score Distribution")

# Combine the two histograms into one plot
library(gridExtra)
grid.arrange(p1, p2, ncol = 2)
