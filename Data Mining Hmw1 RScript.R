#1st Question
#Mean
mean(MyData$SP);mean(MyData$EU);mean(MyData$EM);mean(MyData$DAX);mean(MyData$TL);mean(MyData$USD);mean(MyData$FTSE);mean(MyData$NIKKEI);mean(MyData$BOVESPA)

#Median
median(MyData$SP);median(MyData$EU); median(MyData$EM);median(MyData$DAX);median(MyData$TL);median(MyData$USD);median(MyData$FTSE);median(MyData$NIKKEI);median(MyData$BOVESPA)

#Mode
mode(MyData$SP);mode(MyData$EU); mode(MyData$EM);mode(MyData$DAX);mode(MyData$TL);mode(MyData$USD);mode(MyData$FTSE);mode(MyData$NIKKEI);mode(MyData$BOVESPA)

#Variance
var(MyData$SP);var(MyData$EU); var(MyData$EM);var(MyData$DAX);var(MyData$TL);var(MyData$USD);var(MyData$FTSE);var(MyData$NIKKEI);var(MyData$BOVESPA)

#Standard Deviation
sd(MyData$SP);sd(MyData$EU); sd(MyData$EM);sd(MyData$DAX);sd(MyData$TL);sd(MyData$USD);sd(MyData$FTSE);sd(MyData$NIKKEI);sd(MyData$BOVESPA)

#2nd Question
#boxplot
boxplot(MyData[,2:10], main="ISE BOXPLOT")
#outliers
outliers = boxplot(MyData$SP, plot=FALSE)$out
MyData[MyData$SP %in% outliers,]


#3rd Question
#qqplot
qqnorm(MyData$TL, pch = 1, frame = FALSE)
qqnorm(MyData$EM, pch = 1, frame = FALSE)

isen <- qqnorm(MyData$TL, plot.it = FALSE) 
msci <- qqnorm(MyData$EM, plot.it = FALSE) 
plot(range(isen$x, msci$x), range(isen$y, msci$y), type = "n") 
points(isen) 
points(msci, col = "blue", pch = 1) 

#4th Question
#Yes these two indexes are correlated positively.
#When one increases the other increases as well as shown in the graph. 

#5th Question
jpn <- qqnorm(MyData$NIKKEI, plot.it = FALSE) 
bra <- qqnorm(MyData$BOVESPA, plot.it = FALSE) 
plot(range(jpn$x, bra$x), range(jpn$y, bra$y), type = "n") 
points(jpn) 
points(bra, col = "green", pch = 1) 

#- Between the Stock market return index of Japan, 
#Stock market return index of Brazil we observe a positive correlation, 
#as one increases so does the other one as shown in the graph




#outlier_values <- boxplot.stats(MyData$SP)$out  # outlier values.
#boxplot(MyData$SP, main="SP", boxwex=0.1)
#mtext(paste("Outliers: ", paste(outlier_values, collapse=", ")), cex=0.6)