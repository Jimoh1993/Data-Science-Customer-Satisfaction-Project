is_even <- function(i){
  if(i%%2 == 0){
    print(paste(i, "is even"))
  } else {
    print(paste(i, "is not even"))
  }
  return(i%%2 == 0)
}

is_even(3)

# Method 1
greeting <- function(name){
  result <- paste("Hello", name)
  print(result)
}
greeting("Maria")

# Method 2
greeting2 <- function(name){
  result <- paste("Hello", name, "!")
  return(result)
}
greeting2("Jimoh")

# Marble counting program
# Method 1
white <- 0
black <- 0
count_marbles <- function(jar){
  for (marble in c(1:length(jar))) {
    if(jar[marble] == 1){
      white <- white + 1
    } else{
      black <- black + 1
    }
  }
  result <- c(white, black)
  print(result)
}
white_balck_marble <- list(1,0,1,1,0,1,0,0,1,1,0,0,0,1,1,1)
count_marble(white_balck_marble)

# Method 2
white <- 0
black <- 0
count_marbles <- function(jar){
  for (marble in c(1:length(jar))) {
    if(jar[marble] == 1){
      white <- white + 1
    } else{
      black <- black + 1
    }
  }
  result <- c(white, black)
  return(result)
}
white_balck_marble <- list(1,0,1,1,0,1,0,0,1,1,0,0,0,1,1,1)
count_marble(white_balck_marble)



