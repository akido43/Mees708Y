
checkweather <- function(x) {
  if(FALSE) {
    x = 5
  }
  #x is the temperature, degrees C
  xf <- 32+ 1.8*x #converts to F
  print(paste0("in Farenheit it is ", xf, "."))
  if (x <0) {
    print("It's freezing")
    if (x <32) {
      print("and kids don't go to school") #can nest things within the statement
    }
  } else {
    print("it's not freezing")
  }
  return(xf)
}
