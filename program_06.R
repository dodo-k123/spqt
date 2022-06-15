# Conditional probabilities of joint probability function:
# Probem 5 in Joint Probabilities.docx file

K=matrix(c(3/72,6/72,9/72,5/72,8/72,11/72,7/72,10/72,13/72),nrow=3,ncol=3,byrow=TRUE)
rownames(m)=c("X=1","X=2","X=3")
colnames(m)=c("Y=-2","Y=0","Y=1")
print(K)

S_R = apply(K,1,sum)
print(S_R)
S_C = apply(K,2,sum)
print(S_C)

sum(S_R)
sum(S_C)

#Expectation
x=c(1,2,3)
P_x = x*S_R
print(P_x)
E_x=sum(P_x)
print(E_x)
y=c(-2,0,1)
P_y = y*S_C
print(P_y)
E_y= sum(P_y)
print(E_y)

#Co-variance
P_xy = as.numeric(K)
print(P_xy)
pro_xy=x*y*P_xy
print(pro_xy)
E_xy=sum(pro_xy)
print(E_xy)
cov_xy=E_xy-(E_x*E_y)
print(cov_xy)

#P(X=2/Y=0)
p_x2_y0= K[x==2,y==0]/sum(K[,y==0])
print(p_x2_y0)

#P(Y=1/x<=2)
p_y1_x2 =sum(K[x<=2,y=1])/sum(K[x<=2,])
print(p_y1_x2)

#P(X<=2.5/y<=0.5)
p_x2_y05= sum(K[x<=2.5,y<=0.5])/sum(K[,y<=0.5])
print(p_x2_y05)

#p(X<3/Y<1)
p_x3_y1= sum(K[x<3,y<1])/sum(K[,y<1])
print(p_x3_y1)

#E(X/Y)
Exy =E_xy/E_y
print(Exy)

#E(Y/X)
Eyx =E_xy/E_x
print(Eyx)