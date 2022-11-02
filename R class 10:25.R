#R class  10/25
library(dplyr)
a<-c(1,2,3)


worm <- read.table("~/Desktop/MEES708Y/Mees708Y/dataraw-20221025/worms.missing.txt", head=TRUE)
#used the more buttom and the copy the path to the directory
head(worm) 
is.data.frame(worm)
worm = worm[order(worm$Area),]  #orders the data by a variable by default it incrases in order


tmp <- scan("~/Desktop/MEES708Y/Mees708Y/dataraw-20221025/Lengths.dat",
            what=list(Name="",Family="",Length=0),
            na.string=".")
marine <-as.data.frame(tmp)
marine <- marine[order(marine$Family, marine$length),]
head(marine)
#using dyplr
marine %>% 
    arrange(Length) %>% 
    summarise(Length = mean(Length))
#removing nas
#na.omit


library(reshape2)
baseball <- read.table("./dataraw/Transpos.dat",
                       head = FALSE, col.names = c("Team", "Player", "Type", "Entry"))
baseball.m <- melt(baseball,
                   idvars=c("Team", "Player", "Type"), measure.vars = "Entry")
head(baseball.m)
descriptions <- read.fwf("./dataraw/Chocolate.dat",
                         widths = c(4, 10, 46),
                         col.names = c("CodeNum", "Name", "Description"))
descriptions <- na.omit(descriptions)
sales <- read.table("./dataraw/chocsales.dat", header = FALSE,
                    col.names = c("CodeNum", "PiecesSold"))

#wide v long format
#easier to use a long function to group by columns 
melt() #how to change the code. Look at handout for codes. 

#do teh exercises at the bottom 


#Exercised
library(MASS)
data(birthwt)
#1 
head(birthwt)
sub.birth20 <- subset(birthwt, age <20)
sub.birth20.25 <- subset(birthwt,age>20&age<35)
sub.birth35 <- subset(birthwt, age>25)
