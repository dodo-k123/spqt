data15 = read.csv(file.choose())
data15
df1 = data.frame(data15)
df1
data1 = data15$M1
data1
n1 = length(data1)
data2 = data15$S1
data2
n2 = length(data2)
n1
n2
m1 = as.numeric(data1)
m1
s1 = as.numeric(data2)
s1
sumofprod_m1s1 = sum(m1*s1)
sumofprod_m1s1
firstterm = sumofprod_m1s1/n1
firstterm
mean_m1 = sum(m1)/n1
mean_s1 = sum(s1)/n2
mean_s1
mean_m1
secondterm = mean_m1*mean_s1
secondterm
covariance = firstterm - secondterm
covariance
covariance1 = cov(m1,s1, method = "pearson")
covariance1
