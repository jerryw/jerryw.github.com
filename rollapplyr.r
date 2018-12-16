library(zoo)
DF <- data.frame(a = 1:10, b = rnorm(10), c = letters[1:10])
#DF

#rollapplyr(DF[1:2], 3, sum, fill = NA)
#replace(DF, 1:2, rollapplyr(DF[1:2], 3, sum, fill = NA))

DF$sum3 = rollapplyr(DF[1], 3, sum, fill = NA)
#print('sum3');  DF$sum3

CALCXL =function(z) {
	print(z)
	coef(lm(b~a, data = as.data.frame(z)))['a']
}
DF$XL = rollapplyr(DF[1:2], 3, CALCXL, fill = NA, by.column = FALSE)
print('AFTER XL')

DF

#plot(dd, xlim=c(-1,12), ylim=c(-6,22))
#abline(m)

library(ggplot2)

ggplot(DF, aes(a, b)) + geom_point() + geom_smooth(method = "lm", se=T) + labs(x = "hong", y = "zong标题")

#?geom_smooth

#append(1:5, 0:1, after = 3)

#NA_integer_

#rank(x1 <- c(3, 1, 4, 15, 92))

#replace(1:9,c(1,3,7),0)



