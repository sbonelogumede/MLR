library("knitr")

data <- read.csv(file="multreg.csv")

kable(data)

cor(data[, 1:5])

fit <- lm(Price ~ PlotSize + FloorArea + Trees + Distance + PlotSize*FloorArea,
			 data = data)

summary(fit)

confint(fit)

predict(fit)