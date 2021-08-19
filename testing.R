print("This file was created within RStudio") 
print("And now it lives on GitHub")print("And now it lives on GitHub")

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12

#Yes i can see it.
6+12

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2^5

# Modulo
28 %% 6

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples

# Assign a value to the variables my_apples and my_oranges
my_apples <- 5


# Add these two variables together
my_oranges <- 6

# Create the variable my_fruit
my_fruit = my_apples + my_oranges
my_fruit

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE

# ______________________________VECTORES:

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c( -24, -50, 100, -350, 10)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-  days_vector
names(roulette_vector) <-  days_vector

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- roulette_vector + poker_vector

total_daily

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

# Define a new variable based on a selection te trae los elementos 2, 3, 4
# Rcuenta elementos desde 1, no desde 0 como otros programas
poker_midweek <- poker_vector[c(2,3,4)]

# Define a new variable based on a selection trae elementos del 2 al 5
roulette_selection_vector <- roulette_vector[2:5]

# Select poker results for Monday, Tuesday and Wednesday tambien se pueden traer usando los nombres que se les habia asignado
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)

# Comparar valores R reconoce: < por menos de
# > por mayor que
# <= por menor o igual a
# >= para mayor o igual a
# == por iguales el uno al otro
# != no iguales entre sí
# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector

# Which days did you make money on poker? valores positivos del vector
selection_vector <- poker_vector > 0

# Select from poker_vector these days trae solo los valores positivos del vector
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

# Which days did you make money on roulette?
selection_vector2 <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector2]
roulette_winning_days

#_______________________________________________________MATRICES
#In the matrix() function:
#The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
#The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
#The third argument nrow indicates that the matrix should have three rows.
# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office combinar vectores en un gran vector
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow=3)
star_wars_matrix

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix cbind agregar columnas a matrices
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# Total revenue for US and non-US suma de cada columba, rowsums suma cada fila
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[, 2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2, 2]

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors

#las diviciones entre matrices funcionan de 2 formas, solo / divide cada termino con su correspondiente en la otra matris, 
# mientras que %/% realiza divición entre matrices clásica.


#__________________________________________________________Factores, listados de variables categoricas

# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector

# Animals nominal category
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature cardinal category
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

# Create speed_vector ordinal
speed_vector <- c("medium","slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

#____________________________________________________data frame
mtcars
# Call head() on mtcars
head(mtcars)

# Investigate the structure of mtcars estadistica descriptiva
str(mtcars)

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)

# Check the structure of planets_df
str(planets_df)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1, 3]

# Print out data for Mars (entire fourth row)
planets_df[4, ]

# Select first 5 values of diameter column
planets_df[1:5, "diameter"]

# Select the rings variable from planets_df
rings_vector <- planets_df$rings 

# Print out rings_vector
rings_vector

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]

# Select planets with diameter < 1 subset trae partes del data frame basado en una condición
subset(planets_df, subset = diameter < 1)

# Play around with the order function in the console ordes evalua los valores o niveles, y te trae en que puesto esta cada dato
# 1 es el menor dato, y así va creciendo
a <- c(100, 10, 1000)
order(a)
a[order(a)]

# Use order() to create positions
positions <- order(planets_df$diameter) 

# Use positions to sort planets_df
planets_df[positions, ]

#_____________________________________________________Listas
#basicamente son elementos que pueden contener vectores, matrices y dataframes
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list

# Adapt list() call to give the components names
names(my_list) <- c("vec", "mat", "df")

# Print out my_list
my_list

# Finish the code to build shining_list crea una lista y asigna nombres al timepo
#shining_list <- list(moviename = mov, actors=act, reviews=rev)
#shining_list

#You can also refer to the names of the components, with [[ ]] or with the $ sign. Both will select the data frame representing the reviews:

#shining_list[["reviews"]]
#shining_list$reviews

# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review  
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)