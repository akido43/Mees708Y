#if else
temp <- -5
#note the spaces between functions
if (temp <0) {
  print("It's freezing")
  if (temp <32) {
    print("and kids don't go to school") #can nest things within the statement
  }
} else {
  print("it's not freezing")
}


#creating a function 
source("~/Documents/GitHub/Mees708Y/Check_Fun.R")

checkweather(50)
tempF = checkweather(50) #only records the return() function and not the print
tempF

checkweather <- function(x, verbose = F) {
  #can set the initial value
  #verbose is logical value, indicating if results should be printed
  if(FALSE) {
    x = 5
  }
  #x is the temperature, degrees C
  #xf <- 32+ 1.8*x #converts to F
  if (verbose) {print(paste0("in Farenheit it is ", xf, "."))
  }
  if (x <0) {
    if (verbose) {print("It's freezing")
    }
    if (x <32) {
     if (verbose) {print("and kids don't go to school") #can nest things within the statement
    }}
  } else {
   if (verbose) {print("it's not freezing")
  }}
  #return(xf)
  32+ 1.8*x
}
checkweather()

tempF = checkweather(50, verbose = T)

#Checking for leap years function 
#year must be divisible by 4
#year cannot be divisible by 100, is not a leap year
#year is also evenly divisible by 400, is a leap year

# r function for check divisibility - %% calculates residual 
10 %% 3
x = 8
(x %% 4) == 0 #checks if value is divisible by 4
x = 9
div4 <- function (x) {
  # x is year
  x %% 4
}

div400 <- function (x) {
  x %% 400
}

div100 <- function (x) {
  x %% 100
}

x = 2004
is.leap <- function(year) {
  if ((year %% 4) == 0) {
    if ((year %% 100) == 0) {
      if ((year %% 400) == 0) {
        res = TRUE
      } else {
        res = FALSE
      }
    } else {
      res = TRUE
    }
  } else {
    res = FALSE
  }
  return(res)
}

leapyear(2007)

#Control I adds horizontal space
# match the arguments
{
  if ( x %% 4 != 0) {
    print ("not a leap year")
  }
  if (x %% 100 == 0) {
    print ("not a leap year")
  }
  if (x %% 400 == 0){
  }
  else {
    print("it is a leap year")
  }
}
  
  if (x %% 4 == 0) {
    if (x %% 400 == 0) {
      print("is a leap year")} {
        if (x %% 100 == 0) {
          print ("it is not a leap year")
        }
      }
  }
}
