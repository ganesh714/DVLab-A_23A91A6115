# Load Air Passengers
data(AirPassengers)

#Verify the Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

# Convert the dataset to a dataframe
ap_df<- data.frame(
  year <- time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

# Data Frame with years and months Seperately
ap_df_months <- data.frame(
  year=floor(time(AirPassengers)),
  month= cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

plot(AirPassengers)

plot(AirPassengers,
     type='l',
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="No.of passengers",
     col="red"
)

plot(AirPassengers,
     type='l',
     lwd=1.5,
     main="Air Passengers Trend Analysis",
     xlab="Months",
     ylab="No.of passengers",
     col="red"
)
points(AirPassengers,
       type='o',
       pch='16',
       col="blue")
grid()
