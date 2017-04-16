library(DAAG)
install.packages('DAAG')
datafile(file = "fuel")
file.show('fuel.txt')
datafile('molclock1')
l<-read.table('D:/R_Project_1/molclock1.txt')
read.table('molclock1.txt')
View(rainforest)
with(rainforest,table(complete.cases(root),species,branch))
install.packages('MAAS')
dim(rainforest)
dim(possum)
dim(tinting)
with(rainforest,mean(root))
mean(rainforest$wood)
is.na(rainforest$wood)
y<-rnorm(100)
y
View(women)
rnorm(women$height)
q<-c(1,-1)
t<-pnorm(q)
t
i<-dnorm(0)
i
qnorm(.95)
qnorm(c(.025,.975))
f<-c(1,2,4,5,6,444,66,4,77,87,4,646,45)
mean(f)
range(f)
r<-rnorm(50,mean = 0,sd=5)
plot(rnorm(50,mean = 0,sd=5))
median(r)
Acmena <- subset(rainforest, species=="Acmena smithii")
Acmena
class(Acmena)
Acmena <- subset(rainforest, species %in% c("Acmena smithii","Acacia mabellae"))
View(ais)
susetais1<-subset(ais, sport %in% c("Netball","Row","Tennis") & sex=="f" & wcc==6)
susetais1

#### ScatterPlot
plot(wood~dbh, data = Acmena,log="xy")
Acmena10.lm <- lm(log10(wood) ~ log10(dbh), data=Acmena)
abline(Acmena10.lm)
x<-seq(1,50, by=.2)
x
y<- seq(50,99, by=.2)
y

z<-rnorm(50)
u<-rnorm(50)
pp<- cbind(z,u)
class(pp)
pp<-data.frame(pp)
plot(u~z,data=pp)
fit.lm<-lm(u ~ z, data = pp)
coef(fit.lm)
abline(fit.lm)
View(orings)
included<- logical(23)
included[c(1,2,4,11,13,18)]<-TRUE
included
orings2<-cbind(orings,included)
class(orings2)
t<-unclass(orings2)
t
plot(Total ~ Temperature, data=orings, pch=included+1)
plot(Total ~ Temperature, data=orings, col=included+2)


plot(Total ~ Temperature, data=orings)

View(allbacks)
par(mfrow=c(1,1), pty="m",bg="Orange")
plot(weight ~ volume, pch=unclass(cover), data=allbacks)
class(allbacks$cover)
r<-unclass(allbacks$cover)
class(r)


gender <- factor(c(rep("female", 91), rep("male", 92)))
table(gender)
gender <- factor(gender, levels=c("male", "female"))


gender <- factor(gender, levels=c("Male", "female"))
table(gender)
rm(gender)
with(ant111b, stripchart(harvwt ~ site))

t<-c(1,2,3,4)
class(t)
unclass(t)
t
class(t)
View(ant111b)
with(ant111b, stripchart(harvwt ~ site))
library(lattice)
stripplot(site ~ harvwt, data=ant111b)
with(ant111b, stripplot(harvwt ~ site))
boxplot(site ~ parcel, data=ant111b)
install.packages('MASS')
library(MASS)
View(cabbages)
levels(cabbages$Cult)
class(cabbages$Cult)
class(cabbages$Date)
class(cabbages$HeadWt)
class(cabbages$VitC)

stripplot(Date ~ HeadWt  *  VitC, data=cabbages , outer=T)
View( nsw74psid3)
View(nsw74psid1)
stripplot(trt ~ age + educ, data=nsw74psid1, outer=T, scale="free")
View(Acmena)
sortt<-order(Acmena$dbh)
sortt
acm<-Acmena[sortt,]
acm
rt<-c(1,2,3,4,5,6,7,8)
rt[3]
rt2<-c()
a<-c()
a[1]=2
a[2]=4
a
count=1
for(val in rt)
{
  if(count<=length(rt))
  {
  rt2[count]=val*val
  count=count+1
}
  else
  {
  print(rt2)
  }
}
a
