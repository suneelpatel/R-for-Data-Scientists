library(R6)

#Class Generator

Fruit<-R6Class("Fruit",private = list(name='Apple',cost=100))
class(Fruit)

apple1<-Fruit$new()
apple1

apple2<-Fruit$new()
apple2


#Object Generator. Assigning function as R Object

Employee_Generator<- R6Class("Employee",private = list(Name=NA, Designation=NA),
                             public = list(set_name=function(x){private$Name=x},
                                           set_designation=function(x){private$Designation=x}
                                           )
                             )
class(Employee_Generator)
employee1<-Employee_Generator$new()
employee1
employee1$set_name("Sam")
employee1$set_designation("CEO")
employee1

employee2<-Employee_Generator$new()
employee2
employee2$set_name("Suneel")
employee2$set_designation("MD")
employee2


Fruit_Generator<- R6Class("Fruit",private = list(Name=NA,Cost=NA),
                          public = list(set_name=function(x){private$Name=x},
                                        set_cost=function(x){private$Cost=x}
                                        )
                          )

class(Fruit_Generator)
apple<-Fruit_Generator$new()
apple
apple$set_name("Apple1")
apple$set_cost(100)
apple

Guava<-Fruit_Generator$new()
Guava
Guava$set_cost(100)
Guava$set_name("Guava")
Guava


#--------------------------------END:Section1-----------------------------------
## Initialize Function

library(R6)

Food<-R6Class("Food",private = list(Name=NA,Cost=NA),
              public = list(
                initialize=function(x,y){
                                  private$Name=x
                                  private$Cost=y
                                        }
                            )
              )

pizza<-Food$new("Pizza",500)
pizza

salad<-Food$new("Salad",100)
salad

# Initialize function for mulitiple values

Marks_Generator<-R6Class("marks", private = list(Name=NA,Marks=NA),
                         public = list(
                           initialize=function(x,y){
                                      private$Name=x
                                      private$Marks=y
                                                  }
                                       )
                         )

marks=Marks_Generator$new(c("John","Sam","David","Hari"),c(85,56,65,55))
marks


#initialize function multiple value more than 2 variables

Student_Generator<-R6Class("Student",private = list(Name=NA,Branch=NA,CGPA=NA,Placement=NA),
                           public = list(initialize=function(w,x,y,z){
                                                             private$Name=w
                                                             private$Branch=x
                                                             private$CGPA=y
                                                             private$Placement=z
                                                                    }
                                                        
                                         )
                          )

student1<-Student_Generator$new(c("john","sam","lucy","hari"),
                                c("EC","CS","CA","BSC"),
                                c(1,2,3,4),
                                c(T,T,F,F))
student1


#---------------------------End:Second Session--------------------------------

#inharitance

Vehicle_Generator<-R6Class("Vehicle",private = list(hp=NA,mpg=NA),
                           public = list(
                                      set_hp=function(x){private$hp=x},
                                      set_mpg=function(x){private$mpg=x}
                            
                                        )
                           )

class(Vehicle_Generator)

v1<-Vehicle_Generator$new()
v1
v1$set_hp(110)
v1$set_mpg(80)
v1

#child object generator with properties of parent


Car_Generator<-R6Class("Car",
                       inherit = Vehicle_Generator,
                       privat=list(tyres=NA,color=NA),
                       public = list(
                         set_tyers=function(x){private$tyres=x},
                         set_color=function(x){private$color=x}
                                    )
                       )

Vehicle_Generator
Car_Generator

c1<-Car_Generator$new()
c1

c1$set_hp(110)
c1$set_mpg(80)
c1$set_tyers(4)
c1$set_color("Blue")
c1


#Grand Child

ferrari_generator<-R6Class("ferrari",
                           inherit = Car_Generator,
                           private = list(cost=NA),
                           public = list(set_cost=function(x){private$cost=x})
                           )

ferrari_generator

ferrari1<-ferrari_generator$new()
ferrari1
ferrari1$set_hp(200)
ferrari1$set_mpg(15)
ferrari1$set_tyers(4)
ferrari1$set_color("Blue")
ferrari1$set_cost(1500)
ferrari1
