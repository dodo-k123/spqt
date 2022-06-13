# Calculating Marginal Probalities and Statistical Averages of Joint Probabities
x = matrix(c(1/16,1/8,1/16,1/8,1/4,1/8,1/16,1/8,1/16), nrow = 3, ncol = 3, byrow = TRUE)
rownames(x) = c('x=0','x=1','x=2')
colnames(x) = c('y=0','y=1','y=2')
x
# Marginal Probabities
MargProb_X = apply(x, 1, sum)
MargProb_X
MargProb_Y = apply(x, 2, sum)
MargProb_Y
sum(MargProb_X)
sum(MargProb_Y)
# Expectations
X = c(0,1,2)
Y = c(0,1,2)
E_X = sum(X*MargProb_X)
E_X
E_Y = sum(Y*MargProb_Y)
E_Y
# Variances
V_X = sum(X*X*MargProb_X) - (E_X)^2
V_X
V_Y = sum(Y*Y*MargProb_Y) - (E_Y)^2
V_Y
# Standard Deviations
SD_X = sqrt(V_X)
SD_X
SD_Y = sqrt(V_Y)
SD_Y
# Covariances
x1 = matrix(X, nrow = 3, ncol = 1)
x1
y1 = matrix(Y, nrow = 1, ncol = 3)
y1
xy = x1%*%y1
xy
E_XY = sum(sum((Prod_XY)))
E_XY
Cov_XY = E_XY - E_X*E_Y
Cov_XY
# Correlation Coefficient (Pearson)
r_XY = Cov_XY/(SD_X*SD_Y)
r_XY 
