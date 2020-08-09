
#original data 
Life_Expectancy<-read.csv("Life Expectancy Data.csv")
Life_Expectancy
names(Life_Expectancy)
summary(Life_Expectancy)
nrow(Life_Expectancy)

#removing NA
omit_na <-na.omit(Life_Expectancy)
omit_na
nrow(omit_na)
summary(omit_na)


# group by country and scatterplots
group.by.country<-tapply(omit_na$Life.expectancy, omit_na$Country, mean)
group.by.country

mean.alcohol<-tapply(omit_na$Alcohol,omit_na$Country,mean)
mean.alcohol
plot(group.by.country~mean.alcohol,data=omit_na,xlab="Alcohol",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Alcohol")

mean.income.composition<-tapply(omit_na$Income.composition.of.resources,omit_na$Country,mean)
mean.income.composition
plot(group.by.country~mean.income.composition,data=omit_na,xlab="Income Composition",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Income Composition of Resources")


mean.adult.mortality<-tapply(omit_na$Adult.Mortality,omit_na$Country,mean)
mean.adult.mortality
plot(group.by.country~mean.adult.mortality,data=omit_na,xlab="Adult Mortality",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Adult Mortality")

mean.percentage.expenditure<-tapply(omit_na$percentage.expenditure,omit_na$Country,mean)
mean.percentage.expenditure
plot(group.by.country~mean.percentage.expenditure,data=omit_na,xlab="Percentage Expenditure",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Percentage Expenditure")

mean.Hepatitis.B<-tapply(omit_na$Hepatitis.B,omit_na$Country,mean)
mean.Hepatitis.B
plot(group.by.country~mean.Hepatitis.B,data=omit_na,xlab="Hepatitis B",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Hepatitis B")

mean.HIV.AIDS<-tapply(omit_na$HIV.AIDS,omit_na$Country,mean)
mean.HIV.AIDS
plot(group.by.country~mean.HIV.AIDS,data=omit_na,xlab="HIV AIDS",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs HIV AIDS")

mean.GDP<-tapply(omit_na$GDP,omit_na$Country,mean)
mean.GDP
plot(group.by.country~mean.GDP,data=omit_na,xlab="GDP",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs GDP")

mean.Schooling<-tapply(omit_na$Schooling,omit_na$Country,mean)
mean.Schooling
plot(group.by.country~mean.Schooling,data=omit_na,xlab="Schooling",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Schooling")

mean.thinness_5..9<-tapply(omit_na$thinness.5.9.years,omit_na$Country,mean)
mean.thinness_5..9
plot(group.by.country~mean.thinness_5..9,data=omit_na,xlab="Thinness 5-9 years",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Thinness 5-9")


mean.Diphtheria<-tapply(omit_na$Diphtheria,omit_na$Country,mean)
mean.Diphtheria
plot(group.by.country~mean.Diphtheria,data=omit_na,xlab="Diphtheria",ylab="Life Expectancy",type="p",col = "blue", pch = 16, main = "Life Expectancy vs Diphtheria")



#Visualization by each column and histograms
hist(omit_na$BMI,main="Distribution of BMI",xlab = "BMI",ylab="Count", col = "blue",ylim=c(0,300))
hist(omit_na$infant.deaths,main="Distribution of Infant Deaths",xlab = "Infant Deaths",ylab="Count",ylim=c(0,2000),col = "blue")
hist(omit_na$under.five.deaths,main="Distribution of Under Five Deaths ",xlab = "Under Five Deaths",ylab="Count", col = "blue",ylim=c(0,2000))
hist(omit_na$Income.composition.of.resources,main="Distribution of Income Composition of Resources",xlab = "Income Compoistion of Resources",ylab="Count", col = "blue")
hist(omit_na$Hepatitis.B,main="Distribution of Hepatitis B",xlab = "Hepatitis B",ylab="Count", col = "blue")
hist(omit_na$Measles,main="Distribution of Measles",xlab = "Measles",ylab="Count", col = "blue")
hist(omit_na$Polio,main="Distribution of Polio",xlab = "Polio",ylab="Count", col = "blue")
hist(omit_na$Diphtheria,main="Distribution of Diphtheria",xlab = "Diphtheria",ylab="Count", col = "blue")
hist(omit_na$Adult.Mortality,main="Distribution of Adult Mortality",xlab = "Adult Mortality",ylab="Count", col = "blue")
hist(omit_na$Alcohol,main="Distribution of Alcohol",xlab = "Alcohol",ylab="Count", col = "blue")
hist(omit_na$Schooling,main="Distribution of Schooling",xlab = "Scholling",ylab="Count", col = "blue")
hist(omit_na$GDP,main="Distribution of GDP",xlab = "GDP",ylab="Count", col = "blue")
hist(omit_na$HIV.AIDS,main="Distribution of HIV AIDS",xlab = "HIV AIDS",ylab="Count", col = "blue")
hist(omit_na$percentage.expenditure,main="Distribution of Percentage Expenditure",xlab = "Percentage Expenditure",ylab="Count", col = "blue")
hist(omit_na$Life.expectancy,main="Distribution of Life Expectancy",xlab = "Life Expectancy", ylab="Count", col = "blue")
hist(omit_na$under.five.deaths,main="Distribution of Under Five Deaths ",xlab = "Under Five Deaths",ylab="Count", col = "blue",ylim=c(0,2000))
hist(omit_na$thinness..1.19.years,main="Distribution of thinness 1-19",xlab = "Thinness 1-19",ylab="Count", col = "blue",ylim=c(0,300))
hist(omit_na$thinness.5.9.years,main="Distribution of thinness 5-9 ",xlab = "Thinness 5-9",ylab="Count", col = "blue",ylim=c(0,300))


#how higher life expectancy is related to status, adult mortality ,infant,underfive deaths---getting 5 countries with these values highest and lowest
more_life<-omit_na[order(omit_na$Life.expectancy,decreasing = TRUE),c("Country","Status","Life.expectancy","Year","Adult.Mortality","infant.deaths","under.five.deaths")][1:5, ]
more_life
less_life<-omit_na[order(omit_na$Life.expectancy),c("Country","Status","Life.expectancy","Year","Adult.Mortality","infant.deaths","under.five.deaths")][1:5, ]
less_life

#ordering data as per max and min life expectancy
high_life_expectancy<-omit_na[order(omit_na$Life.expectancy,decreasing = TRUE),c("Adult.Mortality","infant.deaths","under.five.deaths")][1:5, ]
high_life_expectancy
low_life_expectancy<-omit_na[order(omit_na$Life.expectancy),c("Adult.Mortality","infant.deaths","under.five.deaths")][1:5, ]
low_life_expectancy

#arranging data as matrix to plot it
matrix_mortality_low<-data.frame(high_life_expectancy$Adult.Mortality)
matrix_mortality_low
matrix_mortality_high<-data.frame(low_life_expectancy$Adult.Mortality)
matrix_mortality_high
matrix_infant_deaths_low<-data.frame(high_life_expectancy$infant.deaths)
matrix_infant_deaths_low
matrix_infant_deaths_high<-data.frame(low_life_expectancy$infant.deaths)
matrix_infant_deaths_high
matrix_under_5_deaths_low<-data.frame(high_life_expectancy$under.five.deaths)
matrix_under_5_deaths_low
matrix_under_5_deaths_high<-data.frame(low_life_expectancy$under.five.deaths)

#taking legend names dynamically and converting to character as legend requires character argument
legend_names1<-paste(more_life$Country,more_life$Status,sep = "-")
character_legend_names1<-as.character((legend_names1))
character_legend_names1
legend_names2<-paste(less_life$Country,less_life$Status,sep="-")
character_legend_names2<-as.character((legend_names2))
character_legend_names2
bar_text1<-as.character(more_life$Year)
bar_text2<-as.character(less_life$Year)

#color bar plot
library(RColorBrewer)
color<-brewer.pal(5,"Dark2")
color1<-brewer.pal(5,"Accent")

#plot bar-1---comapring adult mortality
par(mfrow=c(1,2),mar=c(5,5,5,10),oma = c(0, 0, 2, 0))
barplot(as.matrix(matrix_mortality_low), ylab = "Count", beside=TRUE,ylim=c(0,800),xlab = "Adult Mortality",col=color,names.arg =bar_text1,las=2)
legend(locator(), legend =character_legend_names1 , cex=1.0, bty="n",fill=color,xpd=NA)
barplot(as.matrix(matrix_mortality_high), ylab = "Count", beside=TRUE,ylim=c(0,800),xlab = "Adult Mortality",col=color1,names.arg =bar_text2,las=2)
legend(locator(), legend = character_legend_names2, cex=1.0, bty="n",
       fill=color1,xpd = NA)
mtext("Comparison of Adult mortality",outer = TRUE,cex = 1.5,side = 3)

#plot bar-2---comapring infant deaths
par(mfrow=c(1,2),mar=c(5,5,5,10),oma = c(0, 0, 2, 0))
barplot(as.matrix(matrix_infant_deaths_low), ylab = "Count", beside=TRUE,ylim=c(0,50),xlab="Infant deaths",col=color,names.arg =bar_text1,las=2)
legend(locator(),legend =character_legend_names1,cex=1.0, bty="n",
       fill=color,xpd = NA)
barplot(as.matrix(matrix_infant_deaths_high), ylab = "Count", beside=TRUE,ylim=c(0,50),xlab="Infant deaths",col=color1,names.arg =bar_text2,las=2)
legend(locator(), legend =character_legend_names2,cex=1.0, bty="n",
       fill=color1,xpd = NA)
mtext("Comparison of Infant Deaths",outer = TRUE,cex = 1.5,side = 3)

#plot bar-2---comapring under 5 deaths
par(mfrow=c(1,2),mar=c(5,5,5,10),oma = c(0, 0, 2, 0))
barplot(as.matrix(matrix_under_5_deaths_low), ylab = "Count", beside=TRUE,ylim=c(0,80),xlab="Under 5 deaths",col=color,names.arg =bar_text1,las=2)
legend(locator(),legend =character_legend_names1,cex=1.0, bty="n",
       fill=color,xpd = NA)
barplot(as.matrix(matrix_under_5_deaths_high), ylab = "Count", beside=TRUE,ylim=c(0,80),xlab="Under 5 deaths",col=color1,names.arg =bar_text2,las=2)
legend(locator(), legend =character_legend_names2,cex=1.0, bty="n",
       fill=color1,xpd = NA)
mtext("Comparison of Under 5 Deaths",outer = TRUE,cex = 1.5,side = 3)

#visualization of NA values
install.packages("naniar")
library(naniar)
vis_miss(Life_Expectancy)
#par(mar=c(5.1,4.1,2.1,5))
par(oma=c(3,3,3,10))
help("vis_miss")
gg_miss_var(Life_Expectancy)

#co-relation matrix after removing under 5,infant,percen ex, alcohol
cor_matrix<-cor(omit_na[ ,c(5,9,10,11,13,14,15,16,17,18,19,20,21,22)])

install.packages("ggcorrplot")
library(ggcorrplot)
ggcorrplot(cor_matrix)
# thinness 1..19- thinness 5..9 , schooling - income composition are highly correlated

# removing thinness 1....19
model1 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(model1)  #standar error - 3.707 # R square - 0.8238

#removing thinness 5....9 and adding thinness 1....19
model2 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+Income.composition.of.resources+Schooling+thinness..1.19.years,data = omit_na)
summary(model2) #3.707, 0.8238

#Removing both thinness
model3 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+Income.composition.of.resources+Schooling,data = omit_na)
summary(model3) #3.71 0.8234

#removing both is increasing error so we can remove either of them as summary of model 1 and 2 is same--removing thinness 1...19
#considering model 1 and removing income composiiton
model4 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Schooling,data = omit_na)
summary(model4) #3.853   0.8096

#considering model 1 and removing schooling
model5<- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources,data = omit_na)
summary(model5)  #3.944 0.8004

#considering model 1 and removing both schooling and income 
model6 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years,data = omit_na)
summary(model6) #4.549 0.7344

#---From model 1 to 6 we can see that error is increasing and r square decreases so considering model 1 for further analysis as it is better

#building regression model on model 1
reg_model1 <- lm(Life.expectancy~Adult.Mortality+Hepatitis.B+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model1)

#plot fitted values vs actual which includes insignificant variables too
plot(x=omit_na$Life.expectancy,y=reg_model1$fitted.values, xlab = "Life Expectancy", ylab = "Fitted values", col = "blue", ylim = c(30,90), xlim = c(30,90))
abline(0,1)

#removing Hepatitis B
reg_model2 <- lm(Life.expectancy~Adult.Mortality+Measles+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model2) # 3.707  0.8237

#removing Measels
reg_model3 <- lm(Life.expectancy~Adult.Mortality+BMI+Polio+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model3) #3.706 0.8237

-------#prob starts
#removing Polio
reg_model4 <- lm(Life.expectancy~Adult.Mortality+BMI+Total.expenditure+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model4) # 3.708 0.8234

#removing Total expenditure
reg_model5 <- lm(Life.expectancy~Adult.Mortality+BMI+Diphtheria+HIV.AIDS+GDP+Population+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model5) #3.71 0.8231

#removing Population
reg_model6 <- lm(Life.expectancy~Adult.Mortality+BMI+Diphtheria+HIV.AIDS+GDP+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(reg_model6) #3.709 0.8231

final_model<-lm(Life.expectancy~Adult.Mortality+BMI+Diphtheria+HIV.AIDS+GDP+thinness.5.9.years+Income.composition.of.resources+Schooling,data = omit_na)
summary(final_model)  #3.709   0.8231

#after removing columns actual vs fitted plot
plot(x=omit_na$Life.expectancy,y=final_model$fitted.values, xlab = "Life Expectancy", ylab = "Fitted values", ylim = c(30,90), xlim = c(30,90),col = "blue")
abline(0,1)

#split into training and testing sets
training_rows<-sample(1:1649,size=1300)
Life_exp_training<-omit_na[training_rows,]
Life_exp_training
nrow(Life_exp_training)
Life_exp_testing<-omit_na[-training_rows,]
Life_exp_testing
nrow(Life_exp_testing)


#model for training data
training_model<-lm(Life.expectancy~Adult.Mortality+BMI+Diphtheria+HIV.AIDS+GDP+thinness.5.9.years+Income.composition.of.resources+Schooling,data = Life_exp_training)
summary(training_model) #3.727 0.8221

#prediction on training data
training_predictions<-predict(final_model,newdata = Life_exp_training)
training_predictions
plot(x=Life_exp_training$Life.expectancy,y=training_predictions, col = "blue", ylim = c(30,90), xlim = c(30,90), xlab= "Life Expectancy", ylab = "Predictions on Training Data", main = "Predictions on Training Data")
abline(0,1)


#prediction on testing data
testing_predictions<-predict(final_model,newdata = Life_exp_testing)
plot(x=Life_exp_testing$Life.expectancy,y=testing_predictions, col = "blue",ylim = c(30,90), xlim = c(30,90), xlab = "Life Expectancy", ylab = "Predictions on Testing Data", main = "Predictions on Testing Data")
abline(0,1)

#rmse for testing data
sqrt(mean((Life_exp_testing$Life.expectancy-testing_predictions)^2))

#comparing  actual vs predicted for testing data
head(cbind(Life_exp_testing$Life.expectancy,testing_predictions))

#1-residual diagnostics
#check for normality
hist(rstudent(final_model), col = "blue", main = "Distribution of studentized residuals", xlab = "Residuals", ylab = "Count", ylim = c(0,400), xlim = c(-4,4))
plot(density(rstudent(final_model)))

#residual plot
#FIT VS residual
plot(final_model$residuals~final_model$fitted.values, col = "blue", xlab = "Fitted values for final model", ylab = "Residuals", main = "Distribution of Residuals vs fitted values")

#fit vs x variable
par (mfrow = c(2,2))
plot(final_model$residuals~omit_na$Adult.Mortality)
plot(final_model$residuals~omit_na$BMI)
plot(final_model$residuals~omit_na$Diphtheria, col = "blue",xlab = "Diphtheria", ylab = "Residuals", main = "Distribution of Residuals vs Diphtheria")# v pattern
plot(final_model$residuals~omit_na$HIV.AIDS)
plot(final_model$residuals~omit_na$GDP, col = "blue",xlab = "GDP", ylab = "Residuals", main = "Distribution of Residuals vs GDP") # slight v
plot(final_model$residuals~omit_na$thinness.5.9.years)
plot(final_model$residuals~omit_na$Income.composition.of.resources)
plot(final_model$residuals~omit_na$Schooling)


#to fix non-constant variance,transform y variable( sqrt increases error so log is used)
fix_non_constant<-lm(log(Life.expectancy)~Adult.Mortality+Diphtheria+Schooling+HIV.AIDS+BMI+Income.composition.of.resources,GDP,thinness.5.9.years,data=omit_na)
summary(fix_non_constant) 
plot(fix_non_constant$residuals~fix_non_constant$fitted.values)

#comparing the full model summary and summary of fix_non_constant, error is reduced from 3.709 to 0.1341

#How life expectancy changes for typical change in x variable(multiply std dev with coefficient)
summary(final_model)
sd(omit_na$Adult.Mortality)
125.3104*(-1.836e-02 )  #-2.300699

sd(omit_na$BMI)
19.75425*(3.612e-02)# 0.7135235

sd(omit_na$Diphtheria)
21.57919*2.302e-02 #0.496753 immunization

sd(omit_na$HIV.AIDS)
6.03236 * (-4.391e-01)  # -2.648809

sd(omit_na$GDP)
11475.9* 6.382e-05  #0.7323919

sd(omit_na$thinness.5.9.years)
4.653757* (-5.553e-02) #-0.2584231

sd(omit_na$Income.composition.of.resources)
0.1830887* 9.693e+00 # 1.774679

sd(omit_na$Schooling)
2.795388 * 8.740e-01  #2.443169


#conclusion----life expectancy is most affected by schooling


#2-cook's distance
cook<-cooks.distance(final_model)
plot(cook,ylab="Cook's distance", main = "Cook's Distance Diagnostic", col = "blue")
abline(final_model)



#identifying outliers
outlier<-which(cook>0.02)
outlier

#building model by removing outliers
final_model_modified<-lm(Life.expectancy~Adult.Mortality+BMI+Diphtheria+HIV.AIDS+Income.composition.of.resources+Schooling+GDP+thinness.5.9.years,data=omit_na[-outlier,])
abline(final_model_modified)
summary(final_model_modified) # 3.662 0.8237

#conclusion-minor differnce between summary of final model and summary of final model modified,removing outlier is increase r square and reduces error

#questions ans -which factor affect the most-schooling
#which factors from our final data are postively related to life expectancy-gdp,bmi,income composition,diphtheria,schooling
#which factors from our final data are negatively related to life expectancy-adult mortality,hiv,thinness 5--9










