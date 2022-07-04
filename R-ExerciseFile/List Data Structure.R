##########List Data Structure ##############
# Create a list.
list1 <- list(c(2,5,3),21.3, TRUE,c("a",2L,3))
list1
str(list1) # structure of object
is.list(list1)
is.vector(list1)
paste(typeof(list1),class(list1))
print(list1)
###access element in List####
##using index[] 
list1[1]# first elements of the list
a.vec<-list1[[1]][1:2]  # list1 first element and slice 1,2 index data 
typeof(list1[[3]])
###Name the list 
empId <- c(1, 2, 3, 4)# numeric vector
empName <- c("Debi", "Sandeep", "Subham", "Shiba")# character vector
numberOfEmp = 4 # a single numeric variable.
# We can combine all these three different  data types into a list
empList <- list(empId, empName, numberOfEmp) # create list
print(empList)
names(empList) #checking names of the list
### assign names to list data #method1
names(empList)<-c("ID","Names","TotalStaff")
#access list elements using names
empList$ID
empList$Names
empList$TotalStaff
empList$ID[2:4]
### assign names to list data #method2
l1<-list("N1"= c(1,2,"a"),"N2"=c(2,3,45,6)) #  N1,N2 is name#  name= any type of object
l1
l1$N1
l1$N2
#######
#methods 2
empList2 = list("ID" = c(10,20,30),"Names" =c("siva","rajan","hema"),
               "Total Staff" =3)
print(empList2)
empList2$'Total Staff'
############Manipulating List Elements##########
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))

list_data

name.vec<-c("1st Quarter", "A_Matrix", "A Inner list")
names(list_data)<-name.vec 
#assign name for inner list
names(list_data$'A Inner list') <-c("color","Double")
list_data$'A Inner list'$color
list_data$'A Inner list'$Double
# Add element at the end of the list.
list_data[3] <- "Replace of 3" # over write the 3rd list element
list_data
list_data[2:4]<-"a"
list_data[-4]<-"R" # exclude 4 th index  
#Remove the last element.
list_data[4] <- NULL # remove the 4 th index data
list_data[1] <- NULL #remove the 1 st  index data
list_data
##To add an item to the end of the list, use the append() function:
list_data
append(list_data,c(45,67,78))
list_data       
append(list_data,20)
list_data 
#####
flist <- list("apple", "banana", "cherry")
append(flist, "orange", after = 1) 

#remove element
rflist <- flist[-1] # exclude / remove  1st index value
rflist
#Concatenation/Merge of lists
merged.list<-c(flist,rflist)
merged.list
#Converting List to Vector
merged.list
unlist.fruit<-unlist(merged.list)
unlist.fruit
is.vector((unlist.fruit))
#R List to matrix
lst2 <- list(list(1, 2, 3),list(4, 5, 6))
lst2
creat.mat<-matrix(unlist(lst2),nrow = 2)
creat.mat


