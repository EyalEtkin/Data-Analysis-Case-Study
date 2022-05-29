#The first workspace (prior to the data cleaning process)
setwd("insert path here")



install.packages("tidyverse")
library(tidyverse)
##NOTE: The following .csv files have been already edited in Microsoft Excel
#The following steps have been made:
#*Fixing the rows where the started_at value was AFTER the ended_at column
#*Adding a ride_length column which calculates the length of the ride in a HH:MM:SS format
#*Adding a day_of_week column which contains the name of the day of the week when the ride was taken place at



#Reading the clean .csv files 
may_2021<-read.csv("may_2021.csv")
june_2021<-read.csv("june_2021.csv")
july_2021<-read.csv("july_2021.csv")
august_2021<-read.csv("august_2021.csv")
september_2021<-read.csv("september_2021.csv")
october_2021<-read.csv("october_2021.csv")
november_2021<-read.csv("november_2021.csv")
december_2021<-read.csv("december_2021.csv")
january_2022<-read.csv("january_2022.csv")
february_2022<-read.csv("february_2022.csv")
march_2022<-read.csv("march_2022.csv")
april_2022<-read.csv("april_2022.csv")

##After reviewing each .csv file, I have found out that the only attribute that may contain NA's are those of the start and end stations
##I also noticed that those who did not have a station_id (start/end) also did not have the name, so I've decided to omit the rows
##with NA's in the id's attribute
##I did the following procedure for each of the 12 .csv files

may_2021_nonulls<-subset(may_2021,start_station_id!="" & end_station_id!="")
head(may_2021_nonulls)

##Despite the ride_id attribute (should be) unique to each and every ride, we will double check that using the unique() function that remove duplicate rows
may_2021_nonulls_nodup<-unique(may_2021_nonulls)

##Saving the new .csv in the "Cleaned" workspace
write.csv(may_2021_nonulls_nodup,"insert path here")

rm(may_2021)
rm(may_2021_nonulls)
rm(may_2021_nonulls_nodup)

june_2021_nonulls<-subset(june_2021,start_station_id!="" & end_station_id!="")
june_2021_nonulls_nodup<-unique(june_2021_nonulls)
write.csv(june_2021_nonulls_nodup,"insert path here")

rm(june_2021)
rm(june_2021_nonulls)
rm(june_2021_nonulls_nodup)


july_2021_nonulls<-subset(july_2021,start_station_id!="" & end_station_id!="")
july_2021_nonulls_nodup<-unique(july_2021_nonulls)
write.csv(july_2021_nonulls_nodup,"insert path here")

rm(july_2021)
rm(july_2021_nonulls)
rm(july_2021_nonulls_nodup)

august_2021_nonulls<-subset(august_2021,start_station_id!="" & end_station_id!="")
august_2021_nonulls_nodup<-unique(august_2021_nonulls)
write.csv(august_2021_nonulls_nodup,"insert path here")

rm(august_2021)
rm(august_2021_nonulls)
rm(august_2021_nonulls_nodup)

september_2021_nonulls<-subset(september_2021,start_station_id!="" & end_station_id!="")
september_2021_nonulls_nodup<-unique(september_2021_nonulls)
write.csv(september_2021_nonulls_nodup,"insert path here")

rm(september_2021)
rm(september_2021_nonulls)
rm(september_2021_nonulls_nodup)

october_2021_nonulls<-subset(october_2021,start_station_id!="" & end_station_id!="")
october_2021_nonulls_nodup<-unique(october_2021_nonulls)
write.csv(october_2021_nonulls_nodup,"insert path here")

rm(october_2021)
rm(october_2021_nonulls)
rm(october_2021_nonulls_nodup)

november_2021_nonulls<-subset(november_2021,start_station_id!="" & end_station_id!="")
november_2021_nonulls_nodup<-unique(november_2021_nonulls)
write.csv(november_2021_nonulls_nodup,"insert path here")

rm(november_2021)
rm(november_2021_nonulls)
rm(november_2021_nonulls_nodup)

december_2021_nonulls<-subset(december_2021,start_station_id!="" & end_station_id!="")
december_2021_nonulls_nodup<-unique(december_2021_nonulls)
write.csv(december_2021_nonulls_nodup,"insert path here")

rm(december_2021)
rm(december_2021_nonulls)
rm(december_2021_nonulls_nodup)

january_2022_nonulls<-subset(january_2022,start_station_id!="" & end_station_id!="")
january_2022_nonulls_nodup<-unique(january_2022_nonulls)
write.csv(january_2022_nonulls_nodup,"insert path here")

rm(january_2022)
rm(january_2022_nonulls)
rm(january_2022_nonulls_nodup)

february_2022_nonulls<-subset(february_2022,start_station_id!="" & end_station_id!="")
february_2022_nonulls_nodup<-unique(february_2022_nonulls)
write.csv(february_2022_nonulls_nodup,"insert path here")

rm(february_2022)
rm(february_2022_nonulls)
rm(february_2022_nonulls_nodup)

march_2022_nonulls<-subset(march_2022,start_station_id!="" & end_station_id!="")
march_2022_nonulls_nodup<-unique(march_2022_nonulls)
write.csv(march_2022_nonulls_nodup,"insert path here")

rm(march_2022)
rm(march_2022_nonulls)
rm(march_2022_nonulls_nodup)

april_2022_nonulls<-subset(april_2022,start_station_id!="" & end_station_id!="")
april_2022_nonulls_nodup<-unique(april_2022_nonulls)
write.csv(april_2022_nonulls_nodup,"insert path here")

rm(april_2022)
rm(april_2022_nonulls)
rm(april_2022_nonulls_nodup)

#Setting the working directory to where the clean data sits
setwd("Cleaned")
getwd()

#Reading the clean .csv files 
may_2021<-read.csv("may_2021.csv")
june_2021<-read.csv("june_2021.csv")
july_2021<-read.csv("july_2021.csv")
august_2021<-read.csv("august_2021.csv")
september_2021<-read.csv("september_2021.csv")
october_2021<-read.csv("october_2021.csv")
november_2021<-read.csv("november_2021.csv")
december_2021<-read.csv("december_2021.csv")
january_2022<-read.csv("january_2022.csv")
february_2022<-read.csv("february_2022.csv")
march_2022<-read.csv("march_2022.csv")
april_2022<-read.csv("april_2022.csv")


#Since the .csv files were cleaned but not sorted in a convenient way, I have decided to sort them using the arrange() function
#By the "started_at" attribute in an ascending order
may_2021_sorted<-may_2021%>% arrange(started_at)

#Checking that the sort process was done correctly
head(may_2021_sorted)

may_2021<-may_2021_sorted
#Saving the new sorted df as a .csv file
write.csv(may_2021,"insert path here")


june_2021_sorted<-june_2021%>% arrange(started_at)
head(june_2021_sorted)
june_2021<-june_2021_sorted
write.csv(june_2021,"insert path here")


july_2021_sorted<-july_2021%>% arrange(started_at)
head(july_2021_sorted)
july_2021<-july_2021_sorted
write.csv(july_2021,"insert path here")


august_2021_sorted<-august_2021%>% arrange(started_at)
head(august_2021_sorted)
august_2021<-august_2021_sorted
write.csv(august_2021,"insert path here")


september_2021_sorted<-september_2021%>% arrange(started_at)
head(september_2021_sorted)
september_2021<-september_2021_sorted
write.csv(september_2021,"insert path here")


october_2021_sorted<-october_2021%>% arrange(started_at)
head(october_2021_sorted)
october_2021<-october_2021_sorted
write.csv(october_2021,"insert path here")


november_2021_sorted<-november_2021%>% arrange(started_at)
head(november_2021_sorted)
november_2021<-december_2021_sorted
write.csv(november_2021,"insert path here")


december_2021_sorted<-december_2021%>% arrange(started_at)
head(december_2021_sorted)
december_2021<-december_2021_sorted
write.csv(december_2021,"insert path here")

january_2022_sorted<-january_2022 %>% arrange(started_at)
head(january_2022_sorted)
january_2022<-january_2022_sorted
write.csv(january_2022,"insert path here")

february_2022_sorted<-february_2022 %>% arrange(started_at)
head(february_2022_sorted)
february_2022<-february_2022_sorted
write.csv(february_2022,"insert path here")

april_2022_sorted<-april_2022 %>% arrange(started_at)
head(april_2022_sorted)
april_2022<-april_2022_sorted
write.csv(april_2022,"insert path here")


#Checking that every .csv file is sorted by the "started_at" column in an ascending order, so that 01/05/2021 at 00:00 should be first and so on...
head(may_2021)
head(june_2021)
head(july_2021)
head(august_2021)
head(september_2021)
head(october_2021)
head(november_2021)
head(december_2021)
head(january_2022)
head(february_2022)
head(march_2022)
head(april_2022)


#Creating a single data frame that will contain all of the trips of the last 12 months altogether, using the rbind() function
all_trips<-rbind(may_2021,june_2021,july_2021,august_2021,september_2021,october_2021,november_2021,december_2021,january_2022,february_2022,march_2022,april_2022)
head(new_combined)
write.csv(new_combined,"insert path here")

#Checking if the bind worked correctly, so that the first observation after the last one from the may_2021 df should be 01/05/2021 at 00:00 and so on..
all_trips[450995,]

#Removing the column that adds the number of each observation that was added during the bind process
final_df<-subset(new_combined,select=-c(X))
head(final_df)
write.csv(final_df,"insert path here")

##remove everything from the environment except for the final cleaned df
rm(list= ls()[! (ls() %in% c('final_df'))])



################## CONDUCT DESCRIPTIVE ANALYSIS ###################
setwd("insert path here")
final_df<-read.csv("all_trips_final.csv")

install.packages("tidyverse")
library(tidyverse)

final_df<-subset((final_df),select=-c(X))
#Using the lubridate package as a part of the tidyverse will help adding a column that will contain a numeric value (in seconds) of the ride_length attribute
library(lubridate)

final_df_v2<-final_df %>% mutate(ride_length_seconds=period_to_seconds(hms(ride_length)))

# Descriptive analysis on ride_length (all figures in seconds)
mean(final_df_v2$ride_length_seconds) #straight average (total ride length / rides)
median(final_df_v2$ride_length_seconds) #midpoint number in the ascending array of ride lengths
max(final_df_v2$ride_length_seconds) #longest ride
min(final_df_v2$ride_length_seconds) #shortest ride

# You can condense the four lines above to one line using summary() on the specific attribute
summary(final_df_v2$ride_length_seconds)
mean(final_df_v2$ride_length_seconds)

# Compare members and casual users
#On average we found out that casual users ride more than twice as longer than members
aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual, FUN = mean)

plot_mean_ride<-aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual, FUN = mean)

names(plot_mean_ride)[names(plot_mean_ride) == "final_df_v2$member_casual"] <- "member_casual"
names(plot_mean_ride)[names(plot_mean_ride) == "final_df_v2$ride_length_seconds"] <- "ride_length_seconds"


install.packages("ggplot2")
library(ggplot2)

#The average ride length of each user group
ggplot(data=plot_mean_ride,aes(member_casual,ride_length_seconds)) +
  geom_col(position="dodge",mapping=aes(x=member_casual,fill=member_casual))+
  labs(title="Average ride length",subtitles="Casual riders VS. Members",x="", y="Ride length in seconds")

user_type_distribution<-subset(final_df_v2, select=c(member_casual)) %>% 
  count(member_casual) %>% 
  arrange(-n)

write.csv(user_type_distribution,'insert path here')


#The median ride length of a casual user is almost as twice as longer than that of a member 
aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual, FUN = median)


# See the average ride time by each day for members vs casual users
aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual + final_df_v2$day_of_week, FUN = mean)


# Notice that the days of the week are out of order. Let's fix that.
final_df_v2$day_of_week <- ordered(final_df_v2$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

# Now, let's run the average ride time by each day for members vs casual users
aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual + final_df_v2$day_of_week, FUN = mean)

# A visualization displaying how many members and casual riders are in the data frame
ggplot(data=final_df_v2) +
  geom_bar(mapping=aes(x=member_casual,fill=member_casual)) +
  labs(title="Casual riders VS. Members", subtitle="Amount of riders in each group in the data frame", x="" ,y= "Count") +
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE))



#Top 5 starting stations - All user types

top_5_starting_stations<-final_df_v2 %>%
  count(start_station_name) %>%
  arrange(-n) %>%
  top_n(5)

ggplot(data=top_5_starting_stations)+
  geom_col(mapping=aes(x=reorder(start_station_name,n),y=n,fill=start_station_name))+
  labs(title="Top 5 starting stations",subtitle="among all user types",x="Start station name", y="Count")




#Top 5 start stations - Members

members_top_5_start_stations<-subset(final_df_v2,select=c(member_casual,start_station_name)) %>%
  filter(member_casual=="member")
members_top_5_start_stations<-subset(members_top_5_start_stations,select=c(start_station_name)) %>%
  count(start_station_name) %>% 
  arrange(-n) %>% 
  top_n(5)


ggplot(data=members_top_5_start_stations)+
  geom_col(mapping=aes(x = reorder(start_station_name,n), y = n, fill = start_station_name))+
  labs(title="Top 5 start stations for members",x="Start station name", y="Count")





#Top 5 end stations - Members
members_top_5_end_stations<-subset(final_df_v2,select=c(member_casual,end_station_name)) %>%
  filter(member_casual=="member")
members_top_5_end_stations<-subset(members_top_5_end_stations,select=c(end_station_name)) %>%
  count(end_station_name) %>% 
  arrange(-n) %>% 
  top_n(5)

ggplot(data=members_top_5_end_stations)+
  geom_col(mapping=aes(x = reorder(end_station_name,n), y = n, fill = end_station_name))+
  labs(title="Top 5 end stations for members",x="End station name", y="Count")



#Top 5 start stations - Casual riders
casuals_top_5_start_stations<-subset(final_df_v2,select=c(member_casual,start_station_name)) %>%
  filter(member_casual=="casual")
casuals_top_5_start_stations<-subset(casuals_top_5_start_stations,select=c(start_station_name)) %>%
  count(start_station_name) %>% 
  arrange(-n) %>% 
  top_n(5)

ggplot(data=casuals_top_5_start_stations)+
  geom_col(mapping=aes(x=reorder(start_station_name,n),y=n,fill=start_station_name))+
  labs(title="Top 5 starting stations for casual riders",x="Start station name", y="Count")




#Top 5 end stations - Casual riders

casuals_top_5_end_stations<-subset(final_df_v2,select=c(member_casual,end_station_name)) %>%
  filter(member_casual=="casual")
casuals_top_5_end_stations<-subset(casuals_top_5_end_stations,select=c(end_station_name)) %>%
  count(end_station_name) %>% 
  arrange(-n) %>% 
  top_n(5)

ggplot(data=casuals_top_5_end_stations)+
  geom_col(mapping=aes(x=reorder(end_station_name,n),y=n,fill=end_station_name))+
  labs(title="Top 5 end stations for casual riders",x="End station name", y="Count")


ggplot(data=casuals_top_5_end_stations)+
  geom_bar(mapping=aes(y=reorder(end_station_name,n),fill=end_station_name))+
  labs(title="Top 5 end stations for casual riders",x="End station name", y="Count")

#Bike type distribution

bike_distribution_data<-final_df_v2 %>% 
  group_by(member_casual, rideable_type) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(rideable_type, member_casual)


final_df_v2 %>% 
  group_by(member_casual, rideable_type) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(rideable_type, member_casual)  %>% 
  ggplot(aes(x = reorder(rideable_type,-number_of_rides), y = number_of_rides, fill = member_casual)) + 
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE)) +
  geom_col(position = "dodge") +
  labs(title="Bike type distribution for each user type", x="Bike Type", y="Number of rides")




# analyze ridership data by type and weekday
final_df_v2 %>% 
  group_by(member_casual, day_of_week) %>%  #groups by usertype and weekday
  summarise(number_of_rides = n()                            #calculates the number of rides and average duration 
            ,average_duration = mean(ride_length_seconds)) %>%         # calculates the average duration
  arrange(member_casual, day_of_week)                                # sorts


# Let's visualize the number of rides by rider type
# We can clearly see that the vast majority of the casual users are riding on the weekend (Saturday, Sunday)
# While during the weekdays members take almost as twice as rides more than the casual users

final_df_v2 %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(day_of_week, member_casual)  %>% 
  ggplot(aes(x = day_of_week, y = number_of_rides, fill = member_casual)) + 
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE)) +
  geom_col(position = "dodge")+
  labs(title="Ridership data by day and user type",x="",y="Number of rides")

# Let's create a visualization for average duration (in minutes)
final_df_v2 %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(number_of_rides = n()
            ,average_duration_in_minutes = mean(ride_length_seconds)/60) %>% 
  arrange(member_casual, day_of_week)  %>% 
  ggplot(aes(x = day_of_week, y = average_duration_in_minutes, fill = member_casual)) +
  geom_col(position = "dodge")

#### OR ####
# Let's create a visualization for average duration (in minutes)
final_df_v2 %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(number_of_rides = n()
            ,average_duration_in_seconds = mean(ride_length_seconds)) %>% 
  arrange(member_casual, day_of_week)  %>% 
  ggplot(aes(x = day_of_week, y = average_duration_in_seconds, fill = member_casual)) +
  geom_col(position = "dodge")





#average ride length per day

avg_ride_length_per_day <- aggregate(final_df_v2$ride_length_seconds ~ final_df_v2$member_casual + final_df_v2$day_of_week, FUN = mean)
write.csv(avg_ride_length_per_day, file = '"insert path here"')

#number of rides per day
num_of_rides_per_day <- final_df_v2 %>% 
  group_by(member_casual, day_of_week) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(day_of_week, member_casual)
write.csv(num_of_rides_per_day,file='"insert path here"')

bike_distribution_data<-final_df_v2 %>% 
  group_by(member_casual, rideable_type) %>% 
  summarise(number_of_rides = n()) %>% 
  arrange(rideable_type, member_casual)
write.csv(bike_distribution_data,file = '"insert path here"')
