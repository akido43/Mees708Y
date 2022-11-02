#week 3

southentrance <- read.table("~/Desktop/MEES708Y/Mees708Y/Code-20221101/data/South.dat",
                            head = FALSE, col.names = c("Entrance", "PassNumber", "PartySize", "Age"))
northentrance <- read.table("~/Desktop/MEES708Y/Mees708Y/Code-20221101/data/North.dat",
                            head = FALSE, col.names = c("Entrance", "PassNumber", "PartySize", "Age", "Lot"))
southentrance$Lot <- NA
both <- rbind(southentrance, northentrance)
both$AmountPaid <- c(0, 35, 27)[cut(both$Age, breaks=c(-99, 3, 65, 999), label = FALSE)]
both


interleave <- merge(southentrance, northentrance[, c(2, 1, 3:5)], all = TRUE)


regular <- read.fwf("~/Desktop/MEES708Y/Mees708Y/Code-20221101/data/Shoe.dat", widths = c(15, 9, 6),
                    col.names = c("Style", "ExerciseType", "RegularPrice"))
regular <- na.omit(regular)
discount <- read.table("~/Desktop/MEES708Y/Mees708Y/Code-20221101/data/Disc.dat", header = FALSE,
                       col.names=c("ExerciseType", "Adjustment"))
levels(regular$ExerciseType) <- levels(discount$ExerciseType)
prices <- merge(regular, discount, by="ExerciseType", all.x = TRUE)
prices$Newprice <- with(prices, round(RegularPrice * (1 - Adjustment)))

str(iris)
str(regular)
levels(iris$Species)

plot(1, col = 2, pch = 18, cex = 2)

fam <-read.delim2("~/Desktop/MEES708Y/Mees708Y/Code-20221101/data/fam.txt")
