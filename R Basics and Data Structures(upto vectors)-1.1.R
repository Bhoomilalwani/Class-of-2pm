# Help Commands

help.start()   # Help documantation
help(median)   # Help on R topic/objects
help("if")     # Help on keywords/reserved words
?median        # Same as help()
??logit        # Help search in documentation 
help.search("logit") # same as ??
library(utils)
apropos("mean") # search using partial match
?rowMeans
#=========================================

# Assignment and Expressions
x<-2  # Assignment Operator
x
1/x   #Expression
x
# Arithmetic Operators

x<-6
y<-2

x+y
x-y
x*y
x/y
x^y

x%/%y # Quotient 
x%%y  # Remainder


# Logical (relational) Operators
y<3
y>3
y>=2
y<=2
y==2
y!=2

# NA 
z<-NA
y==z

# Logical expressions

(y<3)&(x<7) # And 
(y<1)|(x<7) # Or
!(y==2) # Not operator

y<-y + (y<3)   # Logical vector in Ordinary Arithmetic TRUE=1 and FALSE=0 
y

# Grouping of Elementary Commands

{a<-2;b<-3;a-b;a+b} # Grouping of Command

# R Statements

# if else statement

if (a>b) a else b
if (a>b) a

# Nested if else

animal<-'t' # first letter

if (animal=='l') "lion" else 
  if (animal=='t') "tiger" else 
    if (animal=='z') "zebra" else "Not known"

# switch statement

# Character variable

animal<-'t' # first letter

  switch (animal,
        l='lion',
        t='tiger',
        z='zebra',
        'Not known')

# Integer or Factor variable (behaves differently)

sal <-600000
slab<-3

tax<-switch(slab,
            0,
            0.1*sal,
            0.15*sal,
            0.20*sal
            )
tax


# for loop
j=0

for (i in 1:10) { j<-j+i; print(j)}

for(i in c(-1:3, 10))  
  print(switch(i, 2, 3 , 4, 5,6,7,8,9,10))

# repeat and break

i<-0
repeat {print(i); if (i==10) break; i<-i+1}

# while and next
j<-0
while (j<10) {j<-j+1; if (j<6) next; print(j)} 

#==================================================================
# Data Structure in R
# Numeric Vector
x <- c(2,3,4,5,6) # c() combine values into a vector or list
x
y <- c(x,7,x)     # another vector y created from x having 11 elements
y
z<-264:500
z
# Arithmetic operations using vectors
1/x
x+y  # x is recycled to meet the length of y
x-y
x*y
x/y

myvec<-x
print(myvec)
exp(myvec)
log(x = myvec, base = 10) 
log (x = myvec, base = exp(1))
log(myvec, base=10)
log (x=myvec) # base = exp(1) is default
sqrt(myvec)
abs(-myvec)
sin(pi/myvec)
factorial(myvec)
round(myvec/y,digit = 2)
sign(-myvec)
-myvec
# More Vector functions
length(myvec) #Number of elements
min(myvec)
max(myvec)
range(myvec) # returns min and max
var(myvec) 
sd(myvec)
mean(myvec)
median(myvec)
sort(myvec) # Ascending order
sort(myvec,decreasing = TRUE)
sum(myvec)
prod(myvec)

# some vector functions do not work in the presence of null value 
# so they need to be removed before operations
# Missing Value NA

v <- c(1,2,3,NA)
#length(v) <- 4
v
is.na(v)
mode(v)
range(v)
range(v,na.rm = TRUE)
mean(v)
mean(v,na.rm = TRUE)

u<-c(1,2,3,"abcd")
u
mode(u)

# Index vector
xx<-1:30 # colon operator to create integer vector
xx
xx[10]
xx[10:15]
xx[c(5,10,15,20)]
xx[-30]
xx[-(20:30)]


# seq
seq(from = 5, to = 10)    # 5 6 7 8 9 10
seq(5,10) 		# 5 6 7 8 9 10
seq(0,10,by =2) 	# 0 2 4 6 8 10
seq(0,10,length.out = 10)  # Number of elements in length.out

# rep() repeat elements

rep(0, times = 10)
rep(1:5, times = 2) # whole series is repeated
rep(1:5, each = 2)  # each element is repeated
rep(1:5, times=2, each = 2)

# Logical Operations on Vectors and Logical Vectors
x
y
x>3   
x==y
l1<-x>3  # l1 is a Logical Vector
l1
x+l1

Quarters <- paste("Quarter",1:4,sep = "-")
Quarters
cat("Quarter",1:4,sep = "-") # concatenate. Notice the difference in out from paste. In memory

#MASS
#dplyr
#xlsx

length(Quarters)
substr(Quarters, start=9, stop=9)
strsplit(Quarters,split ="-")
nchar(Quarters)
toupper(Quarters)
tolower(Quarters)
paste(Quarters,Quarters,sep = ", ")  # concatenate
m2<-c("do","do not","not")
m2
grep("do",m2)                   # pattern matching
m2<-c(m2,"1")
m2
grep("[a-z]",m2) 
gsub("do","did",m2)            # pattern replacement
m2<-c(m2,"not do")
m2
regexpr("do",m2)

# ifelse function for vectors
f<-c(5,6,7)
s<-c(4,7,6)
ifelse(f>s,f,s) # Returns bigger value

# Managing NA in vector
v<-c(1,2,3,NA,5,NA)
v1<-v[!is.na(v)] # recreates v with non NA values
v1

v2<-v[-c(4,6)] # negative index vector specifies values to be excluded
v2

#=================================================
