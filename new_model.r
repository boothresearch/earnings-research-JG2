earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv") 

fitted_model <- lm(earnings$earn ~ earnings$male+ earnings$height+ earnings$height*earnings$male)
summary(fitted_model)