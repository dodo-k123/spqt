# -------------------------------1.1-------------------------------
# To construct a vector and perform its corresponding arithmetic operations
data = c(1:50)
data2 = c(51:100)
print(data + data2)
print(data * data2)
print(data / data2)
print(data - data2)
print(data + 5)
print(data * 5)
print(data / 5)
print(data - 5)
# -------------------------------/1.1-------------------------------

# -------------------------------1.2-------------------------------
# To construct matrix and perform its respective operations
myMatrix_1 = matrix(c(1:20), nrow = 4, ncol = 5, byrow = T)
print(myMatrix_1)
rownames(myMatrix_1) = c("R1", "R2", "R3", "R4")
colnames(myMatrix_1) = c("C1", "C2", "C3", "C4", "C5")
print(myMatrix_1)
print(myMatrix_1[1:2,1:2])
# Sum of rows and columns
print(rowSums(myMatrix_1))
print(colSums(myMatrix_1))
# Sum of rowsums and colsums
print(paste("Rowsums:", sum(rowSums(myMatrix_1))))
print(paste("Colsums:", sum(colSums(myMatrix_1))))
# -------------------------------/1.2-------------------------------

# -------------------------------1.3-------------------------------
# To convert the given raw data into frequency table
data1 = c(30.21, 35.27, 30.63, 25.65, 37.61, 24.44, 16.01, 14.80, 14.17, 38.35, 16.39, 12.32, 23.93, 26.49,
          39.41, 39.52, 24.39, 30.50, 21.99, 28.66, 30.30, 34.69, 21.83, 22.12, 21.72, 38.14, 18.03, 32.65,
          35.02, 10.77, 29.05, 14.30, 27.75, 34.98, 28.16, 24.05, 30.29, 29.00, 34.37, 24.05, 30.76, 20.05,
          18.27, 29.45, 30.07, 31.92, 36.84, 28.82, 39.41, 39.02, 36.63, 36.69, 21.78, 17.87, 34.52, 16.74,
          18.77, 32.85, 16.69, 33.37, 35.14, 13.21, 28.18, 20.65, 37.14, 21.60, 27.78, 32.69, 25.42, 35.37,
          14.38, 21.73, 35.04, 29.39, 19.42, 11.69, 32.79, 37.28, 23.94, 31.59, 28.06, 18.94, 18.04, 31.63,
          36.89, 36.25, 24.93, 14.67, 29.29, 26.50, 20.58, 22.48, 36.47, 38.88, 35.94, 20.88, 34.48, 17.28,
          20.53, 24.87, 34.59, 37.23, 14.33, 23.80, 19.57, 25.59, 33.74, 15.57, 37.45, 23.43, 12.10, 34.75,
          14.97, 11.22, 19.75, 14.17, 10.27, 18.31, 31.77, 38.69, 11.59, 36.86, 20.99, 16.83, 34.24, 33.96,
          22.84, 36.37, 18.57, 33.85, 29.00, 15.51, 29.83, 36.51, 32.34, 13.48, 13.94, 33.68, 34.03, 27.77,
          20.38, 32.40, 38.18, 32.72, 13.59, 37.18, 13.51, 12.71, 24.59, 11.63, 31.13, 29.99, 34.14, 31.34,
          33.16, 11.50, 26.70, 11.01, 18.73, 37.66, 14.66, 15.02, 10.24, 36.92, 21.97, 24.00, 23.04, 28.52,
          34.80, 30.40, 35.66, 19.22, 23.83, 22.13, 28.04, 18.94, 17.11, 25.61, 22.20, 22.55, 38.72, 29.02,
          37.59, 24.03, 33.16, 22.06, 12.73, 19.80, 26.90, 34.65, 34.53, 13.52, 26.00, 12.40, 28.38, 29.87,
          34.40, 17.66, 38.39, 13.75, 32.68, 37.04, 17.67, 17.57, 23.64, 16.38, 19.99, 21.69, 12.56, 20.74,
          31.07, 39.54, 14.69, 22.88, 30.84, 18.64, 14.50, 18.92, 10.06, 20.14, 12.11, 35.99, 16.14, 17.07,
          10.57, 11.85, 38.06, 19.33, 20.76, 34.64, 15.40, 22.03, 23.19, 18.23, 36.38, 34.19, 35.24, 22.85,
          12.13, 25.68, 24.17, 25.02, 39.56, 35.35, 19.37, 37.72, 37.34, 28.14, 26.13, 32.19, 26.10, 12.21,
          18.45, 28.98, 37.70, 28.06, 33.04, 15.17, 15.35, 38.36, 17.82, 35.34, 26.69, 37.47, 34.31, 34.11,
          37.25, 33.83, 31.09, 13.16, 38.58, 28.57, 26.14, 16.39, 24.19, 12.24, 16.00, 15.27, 13.49, 26.70,
          38.88, 27.15, 25.03, 11.00, 32.35, 24.57, 18.01, 30.40, 20.01, 11.92, 36.43, 37.64, 11.40, 15.95,
          36.19, 22.63, 14.56, 33.44, 27.24, 33.91)
print(data1)
cat("\014")
data_length = length(data1)
data_range = range(data1)
bins = seq(10, 40, by = 0.5)
CI = cut(data1, bins, right = F)
print(transform(table(CI)))
# -------------------------------/1.3-------------------------------

# -------------------------------1.4-------------------------------
# To construct a histogram using raw data and frequency data
# for raw data
print(data1)
data_length = length(data1)
data_range = range(data1)
bins = seq(10, 40, by = 0.5)
hist(data, main="Histogram of Raw Data", col = c("red","blue","white","green","yellow", "orange"))
CI = cut(data1, bins, right = F)
h = hist(table(CI), main="Histogram of Frequency Distribution", col = c("red","blue","white","green","yellow", "orange"), breaks=10 ,xlim=c(0,10))
text(h$mids,h$counts,labels = h$counts, adj = c(0.5,-0.5))
# -------------------------------/1.4-------------------------------

# -------------------------------1.5-------------------------------
# To construct a barplot for grouped and ungrouped data
print(data1)
data_length = length(data1)
data_range = range(data1)
bins = seq(10, 40, by = 0.5)
CI = cut(data1, bins, right = F)
barplot(data1, main = "Barplot of raw data", col = "Red", xlab = "observations", ylab = "frequency")
barplot(table(CI))
table(CI)

# -------------------------------1.6-------------------------------
# To construct a box plot for the given data
print(data1)
data_length = length(data1)
data_range = range(data1)
bins = seq(10, 40, by = 0.5)
CI = cut(data1, bins, right = F)
boxplot(data, main = "boxplot diagram for Raw data", xlab = "Observations", ylab = "Frequency", col = c("#333333"))
boxplot(table(CI), main = "boxplot diagram for grouped data", xlab = "Midpoints", ylab = "Probability", col = c("#333333"))
# -------------------------------/1.6-------------------------------

# -------------------------------1.7-------------------------------
# To construct a density plot for the given data
print(data1)
data_length = length(data1)
data_range = range(data1)
bins = seq(10, 40, by = 0.5)
CI = cut(data1, bins, right = F)
plot(density(data1), main = "density plot diagram for Raw data", xlab = "Observations", ylab = "Frequency", col = c("#333333"), lwd = 3)
plot(density(table(CI)), main = "density plot diagram for frequency distribution", xlab ="Midpoints", ylab = "Probability", col = c("green"), lwd = 3)
# -------------------------------/1.7-------------------------------

# -------------------------------1.8-------------------------------
# To construct a pie chart – 2D for the given data
data = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,2,1,2,3,2,1,3,2,2,2,2,3,2)
data_length = length(data)
pie_per = (table(data)/sum(table(data)))*100
pie_deg = (table(data)/sum(table(data)))*360
pie(table(data), main="pie chart for raw data", col = c("red","green","yellow"),labels=pie_per)
pie(table(data), main=" pie chart for raw data ", col = c("red","green","yellow"),labels=pie_deg)
# -------------------------------/1.8-------------------------------

# -------------------------------1.9-------------------------------
# To construct a pie chart – 3D for the given data
install.packages("plotrix")
library(plotrix)
pie3D(table(data),main="PieChartforSalesman",col=c("pink","red","purple"),labels=pie_per, explode=0.1)
# -------------------------------/1.9-------------------------------
