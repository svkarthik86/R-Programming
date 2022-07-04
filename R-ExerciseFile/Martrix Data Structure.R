#####################Matrix Data Structure##################

#Creating Matrix 
A = matrix(1:9,nrow = 3,ncol = 3,byrow = FALSE,
           dimnames =list(c('a','b','c'),c('d','e','f')))
print(A)
colnames(A)
rownames(A)
# Naming rows
rownames(A)<-c("ax", "bx", "cx")
# Naming column
colnames(A)<-c('dy','ey','fy')
A
#Creating constant filled matrices
# Matrix having 3 rows and 3 columns # filled by a single constant 7
print(matrix(7, 3, 3))
#Diagonal matrix:
print(diag(c(5,2,3),3,3))
#Identity matrix:
print(diag(1, 5, 5))
#Matrix metrics
dim(A)#dimension of matrix A
nrow(A)# number of row in matrix A
ncol(A)# number of column in matrix A
length(A) # total no of element in matrix A
prod(dim(A))
#Accessing elements of a Matrix
A[1,] # [row,column]
cat("Accessing first and second column\n")
print(A[c(1,3), c(1,3)])
A[-1,-3]
A*2
A-2
is.matrix(A)
is.vector(A)
#matrix operation
A <- matrix(c(2,3,-2,1,2,2),3,2)
B <- matrix(c(1,4,-2,1,2,1),3,2)
A+B
A-B
A*B #element by element multiplication
c <- matrix(c(2,-2,1,2,3,1),2,3)
A%*%c #matrix mutiplication
#transpose of Matrix
t(c)
####
s.mat<-matrix(c(2,1,6,1,3,4,6,4,-2),3,3)
s.mat
solve(s.mat)

det(s.mat) #Determinant of a Matrix
rank.mat<-qr(s.mat)
sum(s.mat)
colSums(s.mat)
rowSums(s.mat)
# adding data in colum
# Horizontal Concatenation
cbind(A,c(3,4,5))
A
#Vertical Concatenation (Appending)
rbind(A,c(4,5))
# remove /Delete
A

