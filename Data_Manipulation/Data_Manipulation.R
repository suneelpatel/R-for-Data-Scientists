install.packages("dplyr")

library(dplyr)

library(hflights)
View(hflights)

hflightsSubsetdata= select(hflights,Year,Month,FlightNum)
View(hflightsSubsetdata)

#OR

hflightsSubsetdata= select(hflights,1,2,8)
View(hflightsSubsetdata)


#Select variable with define a text string

hflightsWithTimeVars= select(hflights,contains("Time"))
View(hflightsWithTimeVars)

hflightsCol1to5 = select(hflights,1:5)
View(hflightsCol1to5)

hflightsSubset= select(hflights, Year:FlightNum)
View(hflightsSubset)


hflightsSubsetStartingwithVarName= select(hflights,starts_with("Day"),ends_with("Time"))
View(hflightsSubsetStartingwithVarName)

#Functions
marks<- read.csv("Marks.csv")
View(marks)

MarkTotal= mutate(marks,TotalMarks=Math+Physics+Chemistry)
View(MarkTotal)

MarksPercentage= mutate(MarksTotal,PercentageTotal=TotalMarks/3)
View(MarksPercentage)

PassingStatus= mutate(MarksPercentage,Result=ifelse(PercentageTotal>40,"Pass","Fail"))
View(PassingStatus)

#Filtering with Filter Funtions
View(mtcars)

mtcarswithGT4cyl= filter(mtcars,cyl>4)
View(mtcarswithGT4cyl)

mtcarswithGT4cyl= filter(mtcars,cyl==4)
View(mtcarswithGT4cyl)

mpgGT25=filter(mtcars,mpg>25)
View(mpgGT25)

#Filtering with Multiple Conditions

mtcarswithHPGT150_GearEQ5=filter(mtcars,hp>150 & gear==5)
View(mtcarswithHPGT150_GearEQ5)

mtcarswithHPGT150_GearEQ5=filter(mtcars,hp>150 | gear==5)
View(mtcarswithHPGT150_GearEQ5)

mtcarsSubset=filter(mtcars,hp>150 & gear==5 & carb>4)
View(mtcarsSubset)

#arrange Function

MilagePerformanceCars= arrange(mtcars,mpg)
View(MilagePerformanceCars)

MilagePerformanceCarsDesc= arrange(mtcars,desc(mpg))
View(MilagePerformanceCarsDesc)


#Summarise Function
house<-read.csv("house.csv")
View(house)

summarise(house,Min_price=min(price))
summarise(house,Max_price=max(price))
summarise(house,Sum_price=sum(price))


#pipling in R

View(hflights)
View(hflights %>% select(contains("Time")) %>% filter(AirTime>100))

hflightsSubset = hflights %>% filter(UniqueCarrier=="WN") %>% summarise(max(AirTime,na.rm = T))
View(hflightsSubset)

hflightsSubset = hflights %>% select(8,11,16) %>% mutate(Avg.Speed=Distance/AirTime*60) %>% filter(Avg.Speed>500)
View(hflightsSubset)

hflightsSubset= hflights %>% select(8,11,16) %>% mutate (Avg.speed=Distance/AirTime*60) %>% 
                summarise(min.speed=min(Avg.speed,na.rm=T))
View(hflightsSubset)

hflights %>% filter(UniqueCarrier=='WN') %>% summarise(Min.Time=min(AirTime,na.rm = T))
hflights %>% filter(UniqueCarrier=='WN') %>% summarise(Max.Time=max(AirTime,na.rm = T))


##Preparing Table
employee_designation = data.frame(Name=c('John','Sam','Raj','Amy','Anne'),
                                  Designation=c("CTO","CEO","SDE","COO","Analyst"))

employee_designation

employee_salary = data.frame(Name=c('John','Sam','Jason','Adom','Anne'),
                             Salary=c(78032,32789,32912,8931,73823))
employee_salary

#left_join

left_join(employee_designation,employee_salary, by="Name")
str(employee_designation)
str(employee_salary)


#left_join

right_join(employee_designation,employee_salary, by="Name")

#inner_join

#left_join

inner_join(employee_designation,employee_salary, by="Name")

#full_Join
#left_join

full_join(employee_designation,employee_salary, by="Name")


# data.table
View(iris)
class(iris)

library(data.table)
as.data.table(iris)->iris.dt
View(iris.dt)
class(iris.dt)

iris.dt[2:6]

iris.dt[c(1,3,5,8)]

iris.dt[Species=="virginica"]

iris.dt[Sepal.Length>5]

iris.dt[Sepal.Length>5 & Petal.Length>5]

iris.dt[Sepal.Length>5 | Petal.Length==2]

#Selecting Colum

View(iris.dt[,3:5])

View(iris.dt[,c(1,3,5)])

View(iris.dt[,Sepal.Width:Species])

## Filter out the row and columnw as well

View(hflights)
class(hflights)

as.data.table(hflights)->hflights.dt
View(hflights.dt)
class(hflights.dt)

View(hflights.dt[AirTime>100,c("DepTime","ArrTime","AirTime")])

#Mean of Values in column

iris.dt[,mean(Sepal.Width),by=Species]


