#Vector

####1.creating Vector using : operator
a.vec<-4:10
a.vec
is.vector(a.vec)
###2.creating Vector using seq() function
s.vec1<-seq(from=4, to=20)
s.vec1
s.vec2<-seq(from=4, to=20,by=2)
s.vec2
s.vec3<-seq(from=40, to=20,by=-2)
s.vec3
s.vec4<-seq(from=10, to=20,length.out=5) #line space 
s.vec4
s.vec5<-seq(from=10, to=20)
s.vec5
s.vec6<-seq(2,10,3)# from=2,to=10,by=3
s.vec7<-seq(134,10)
s.vec7
###3.Create Vector using c() combine/con-cat function
c.vec1<-c(2,3,10:20,seq(2,30,3),TRUE)
c.vec1
is.vector(c.vec1)
c.vec2<-c("a","b",1.5:10,seq(5),F)
c.vec2
is.vector((c.vec2))
#####Indexing of Vectors in R
inx.vec1<-c(4,6,8,c(50:60))
inx.vec1
inx.vec1[1] # accessing vector element using []
inx.vec1[1:5] # access value indexed  1 to 5
inx.vec1[-1] # exclude the value at -1 index 
inx.vec1[c(1,5,10,20)]  # index can be vector # index out of range will be NA
inx.vec1[c(-2,-4,-6)]  # negative index vector exclude the value
inx.vec1[-c(1,3,5)]
# Accessing vector elements using logical indexing.

inx.lg.vec1<-c(3:8)
inx.lg.vec1
inx.lg.vec1[c(T,F,T,F,T,T,T,F)] # logical index 
inx.lg.vec1[c(T,F)] # recycle to match
log.inx<-inx.lg.vec1>5
inx.lg.vec1[log.inx] #filter the data which greater than 5
inx.lg.vec1[inx.lg.vec1>5]

######Modifying a vector
mod.vec1<-c(letters[1:10])
mod.vec1[1]<-"A" # mutable 
mod.vec1[c(1,4,10)]<-"EduBridge"
mod.vec1
mod.vec1[c(1,4,10)]<-c(3,4,5)
mod.vec1
mod.vec1[1]<-c(56)
mod.vec1

######Vector Manipulation
arith.vec<-c(4:10)
arith.vec
arith.vec+2
arith.vec/2
another.vec<-c(2,4,3)
another.vec
arith.vec+another.vec
c(3,4,5)+c(5,6,7)
#####Elements in a vector can be sorted using the sort() function
#numeric data
sort.vec<-c(45,56,23,78,14,-35,-6,29)
sort.vec
sort(sort.vec)# default ascending order
sort(sort.vec,decreasing = T)
#character data
sort.char.vec<-c("mon","tue","wed","thur","fri","sat","sun")
sort(sort.char.vec)
sort(sort.char.vec,decreasing = TRUE)
#logical data
sort.log.vec<-c(T,F,T,T,F,F)
sort.log.vec
sort(sort.log.vec)
sort(sort.log.vec,decreasing = T)
######Repeating Vector Element using rep() function
rep(1:4,times=2)
rep(1:4,times=5,length.out=10)
rep(1:4,5,10)
rep(1:4,times=2,each=3)
rep(1:4,times=2,length.out=10,each=3)
rep(1:4,2,10,3)

######Deleting a vector/removing Elements
###using assign NULL
del.vec <- c(8, 10, 2, 5)
del.vec
del.vec<-NULL
del.vec
###using rm() method
del.vec2 <- c(18, 100, 12, 325)
del.vec2
rm(del.vec2)












