earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv") 
fitted_model <- lm(earnings$earn ~ earnings$height)

sink("lm_output.txt", append= FALSE)
print(Sys.time(),quote=FALSE)
print(summary(fitted_model))
closeAllConnections()

#modified model: 
modified_model <- lm(earnings$height ~ earnings$earn)
sink("modified_lm_output.txt")
print(summary(modified_model))
sink() 

png("reg01.png")
plot(earnings$height , earnings$earn, main="Height VS Earnings", xlab="height", ylab="earnings")
abline(a=modified_model$coefficients[1], b=modified_model$coefficients[2], col="red")
dev.off