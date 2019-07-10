setwd(choose.dir())
getwd()

House=read.csv("housingdata.csv")
View(House)

hist(House$price)
hist(House$price, xlab = "Price of House", ylab = "Number of Houses")
hist(House$price,col = "green", xlab = "Price of House", ylab = "Number of Houses")

##Functions of Series of Colors
colorRampPalette(c("blue","green","red"))->colfun
hist(House$price,col = colfun(10))

hist(House$price, col = "green", xlab = "Price of House", ylab="No. of Houses", main = "Price Distribution of Houses")

hist(House$price, breaks = 4)


#------------------------------Scatter plot functionally-----------------------

plot(House$price~House$living_area)

plot(House$price~House$living_area, col="maroon")

plot(House$price~House$living_area, col="maroon", xlab="Living Area",ylab ="Price of House")

#pch levels are form 0 to 25

plot(House$price~House$living_area,pch=10)

plot(House$price~House$land_value,pch=10)

colorRampPalette(c("red","blue","orange"))>-colfun

plot(House$price~House$land_value,col=colfun(5), pch=9)


##----------------------Box Plot------------------------------------------
boxplot(House$price)

boxplot(House$price~House$waterfront, col=c("palegreen4","cadetblue"))

View(iris)

plot(iris$Sepal.Width,iris$Petal.Width, col=iris$Species)


#-----------------------pie Chart-----------------------------------------

unique(House$air_cond)
table(House$air_cond)
pie(table(House$air_cond),col=c("cadetblue","burlywood"))

#----------------------ggplot---------------------------------------------

library(ggplot2)
ggplot(iris,aes(x=Sepal.Width,y=Sepal.Length,col=Species))+geom_point()

ggplot(House,aes(x=price))+geom_histogram(fill="palegreen4",col="green")

ggplot(House,aes(x=price,fill=air_cond))+geom_histogram(col="darkmagenta")

ggplot(House,aes(x=price, fill=air_cond))+geom_histogram(position = "identity") 

ggplot(House,aes(x=price, fill=air_cond))+geom_histogram(position = "fill") 

ggplot(House,aes(x=waterfront))+geom_bar(fill="cadetblue")

ggplot(House,aes(y=price,x=living_area, col=rooms))+geom_point()

#-----------------------------density plot---------------------------

ggplot(House,aes(x=price))+geom_density()

#adding color
ggplot(House,aes(x=price))+geom_density(fill='palegreen')


ggplot(House,aes(x=price, fill=air_cond))+geom_density() 

#transprancy level.alpha
ggplot(House,aes(x=price, fill=air_cond))+geom_density(alpha=.75) 

#smooth curve
ggplot(House,aes(x=price, y=living_area))+geom_smooth()

#split by water front variable
ggplot(House,aes(x=price,y=living_area,col=waterfront))+geom_smooth(se=F)

ggplot(House,aes(x=price, y=living_area,col=heat))+geom_smooth(se=F)+geom_point()


#box plot with the ggplot function
ggplot(House,aes(y=price,x=rooms,col=rooms))+geom_boxplot()

ggplot(House,aes(y=price,x=rooms,fill=rooms))+geom_boxplot()

#voilin plot

ggplot(House,aes(x=waterfront,y=price))+geom_violin()

ggplot(House,aes(x=waterfront,y=price, fill=air_cond))+geom_violin()



#---------------------------------faceting-----------------------------------------------------

ggplot(House, aes(y=price,x=living_area,col=fuel))+geom_point()+facet_grid(.~fuel)

#facting Histogram

ggplot(House,aes(x=price,fill=heat))+geom_histogram()+facet_grid(.~heat)


#facting in boxplot
ggplot(House, aes(y=price,x=fuel,fill=air_cond))+geom_boxplot()+facet_grid(.~air_cond)

#theme layer

ggplot(House, aes(y=price,x=living_area,col=heat))+geom_point()+theme(panel.background = element_rect("coral"))

#assining color to plot
ggplot(House, aes(y=price,x=living_area,col=heat))+geom_point()+theme(panel.background = element_rect("coral"),plot.background = element_rect("cadetblue"))


#Word Cloud
library(wordcloud2)
View(demoFreq)

wordcloud2(demoFreq)
wordcloud2(demoFreq,shape = "star",size = .7)
