
-- Airline Sentiment
-- Create table for test.csv
-- enclose column names in quotes to preserve capitalization

create table airline_sentiment (
id integer,
"Gender" text,
"CustomerType" text,
"CustomerAge" integer,
"TypeOfTravel" text,
"CabinClass" text,
"FlightDistance" integer,
"InflightWifiService" integer,
"DepartArrivalTimeConvenient" integer,
"EaseOfOnlineBooking" integer,
"GateLocation" integer,
"FoodAndDrink" integer,
"OnlineBoarding" integer,
"SeatComfort" integer,
"InflightEntertainment" integer,
"OnboardService" integer,
"LegRoomService" integer,
"BaggageHandling" integer,
"CheckinService" integer,
"InflightService" integer,
"Cleanliness" integer,
"DepartDelayMinutes" integer,
"ArrivalDelayMinutes" integer,
"Satisfaction" text,
primary key (id)
);

