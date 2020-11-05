#1.)
#read in data
Sdata=read.table(file="Sdata.txt", header=TRUE)
#define data for plot
ggplot(data=Sdata, aes(x= GPG, y=Wins)) + 
  #scatter plot
  geom_point()+
  #label axes
  xlab("Goals per Game") +
ylab("Wins")+
  #trendline and theme
  stat_smooth(method="lm")+
  theme_classic()
#2.)
Pdata=read.csv(file="data.txt", header=TRUE)
#generate bar plot of means for each region
ggplot(data=Pdata, aes(x=region, y=observations))+
  stat_summary(fun=mean, geom="bar")+
  theme_classic()
#generate scatter plot of all observations
ggplot(data=Pdata, aes(x=region, y=observations)) + 
  #scatter plot
  geom_point()+
  geom_jitter()
  theme_classic()
  #The graphs reveal very different information about the data. 
  #The bar plot gives the impression that all regions have similar
  #observations because their means are so close. However, the
  #scatterplot reveals that the east and west have a variance too high
  #to gain any information from the mean, while all northern values
  #are around 15. Southern values are likely to be 5 or between
  #20 and 30, and are not similar to the northern one at all.
Pdata

