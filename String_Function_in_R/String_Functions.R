v1="Learn Python Online"
v1
class(v1)

v1="This is a online platform"
v1

v1='This is a online platform'
v1

v1="You are learning \"R\" with suneel patel"
v1

#-------------------------------------------------------------------

#Convert number into string

x=7.8974343
x
class(x)

v1=as.character(x)
v1
class(v1)


#format scientific

x=7.8974343
x
format(x,digits = 1,scientific = TRUE)
format(x,digits = 2,scientific = T)
format(x,digits = 5,scientific = T)


#formatC
formatC(x,format = "f",digits = 1)
formatC(x,format = "e", digits = 1)
formatC(x,format = "g",digits = 1)

#Paste Function

distance_covered<-c(70,75,88,80)
day_of_Week<-c("Mon","Tue","Sat","Sun")
Expense_raised<-c(45,59,35,54)

distance_covered1<-paste(distance_covered,"km",sep = "")
distance_covered1
day_of_week1<-paste(day_of_Week,":",sep = "")
day_of_week1
Expense_raised1<-paste("$",Expense_raised, sep = "")
Expense_raised1


final_vector1<-paste(day_of_week1,distance_covered1,Expense_raised1,sep = "_")
final_vector1

final_vector2<-paste(day_of_week1,distance_covered1,Expense_raised1,sep = "_", collapse = ";")
final_vector2

#---------------------------------------End of Session 1---------------------------------

#string r package

library(stringr)
v1=c(NA,"India",NA,"America")
v2=c("Maharashtra","Delhi","Arizona","New York")

paste(v1,v2)

str_c(v1,v2)

str_c(v1,"-",v2)

##extract text string

str_sub(v2,1,3)

str_sub(v2,-3,-1)

##pattern in text string

string_v=c("Maharashtra","Delhi","Arizonana","New York")
str_detect(string_v,pattern = fixed("na"))

str_count(string_v,pattern = fixed("na"))

#str split

string_v=c("Guitar;Voilin","samba;salsa;Ballet;Tango;Kabuki")
string_v

str_split(string_v,pattern = ";")
str_split(string_v,pattern = ";", simplify = T)

#str replace

str_replace(string_v,pattern = ";",replacement = "&")

str_replace_all(string_v,pattern = ";",replacement = "&")

#-------------------------------End of Session 2--------------------------------

library(tm)

tweets_v<-read.csv("Tweets4.csv", stringsAsFactors = FALSE)
View(tweets_v)
head(tweets_v)
str(tweets_v)
names(tweets_v)
dim(tweets_v)
nrow(tweets_v)
ncol(tweets_v)
summary(tweets_v)


#seprating out field that requires text mining

tweets_v2<-tweets_v$Tweets
tweets_v2

#vector source will take vector as argument

tweets_for_mining<- VectorSource(tweets_v2)
tweets_for_mining
tweets_for_mining[1]

tweets_corpus<-VCorpus(tweets_for_mining)
print(tweets_corpus)

#cleaning functions with tm package

v<-tm_map(tweets_corpus, tolower)
v[[1]][1]
v<-tm_map(tweets_corpus, removePunctuation)
v[[1]][1]

#---------------------------------End of Session 3-------------------------------
library(tm)
library(SnowballC)

v7<-c("additional","additive","addition")
v7

stem_doc<-stemDocument(v7)
stem_doc

v12<-"addition"
v12
complete_txt<- stemCompletion(stem_doc,v12)
complete_txt

v8<-c("complicated","complication","complicatedly")
v8

stem_doc<-stemDocument(v8)
stem_doc

v9<-"complicate"
v9

complete_text<-stemCompletion(stem_doc,v9)
complete_text


tweets_corpus[[1]]$content

v16<-DocumentTermMatrix(tweets_corpus)
v16

v17<-as.matrix(v16)
v17
#checking the dimension of matrix
dim(v17)

#review a portion of matrix, in row we have documents and in col its terms or words

v17[13:4,9:5]
v17[,9:5]

v21<-TermDocumentMatrix(tweets_corpus)
v21

v22<-as.matrix(v21)
v22
#checking the dimension of matrix
dim(v22)

#review a portion of matrix
v22[4:13,5:9]

