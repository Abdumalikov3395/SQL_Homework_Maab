

create table aeroport (
id int,
airoport_name varchar(20),
country varchar(20),
state varchar(20),
city varchar(20),
created_at date,
updated_at date,
constraint PK_aeroport_ID  primary key (id)
);

create table airline (
id int,
airline_code varchar(20),
airline_name varchar(20),
constraint PK_airline_aeroport_ID  primary key (id)
);


create table flights (
flight_id int,
departing_gate varchar(20),
arriving_gate varchar(20),
created_at date,
update_at date,
airline_id int,
departing_airoport_id int,
arriving_airoport_id int,
constraint PK_flights_Flights_ID  primary key (flight_id),
constraint FK_flights_Departing_Aeroport_ID  foreign key (departing_airoport_id) 
references aeroport(id),
constraint FK_flights_Arriving_Aeroport_ID  foreign key (arriving_airoport_id) 
references aeroport(id),
constraint FK_flights_Airline_ID  foreign key (airline_id) 
references airline(id)
);

create table passengers (
id int,
first_name varchar(20),
last_name varchar(20),
country varchar(20),
passport_number int,
constraint PK_passengers_passengers_ID  primary key (id)
);


create table booking (
booking_id int,
flight_id int,
status varchar(20),
passenger_id int,
constraint PK_Booking_ID  primary key (booking_id),
constraint Fk_booking_passenger_id foreign key (passenger_id) 
references passengers(id)
);

create table flights_manifest (
id int,
booking_id int,
flight_id int,
constraint PK_flights_manifest_ID  primary key (id),
constraint FK_flights_manifest_booking_ID  foreign key (booking_id) 
references booking(booking_id),
constraint FK_flights_manifest_flight_ID  foreign key (flight_id) 
references flights(flight_id)
);

create table boarding_pass (
id int,
booking_id int,
qr_code varchar(20),
constraint PK_boarding_pass_ID  primary key (id),
constraint FK_boarding_pass_booking_ID  foreign key (booking_id) 
references booking(booking_id)
);

create table boggage (
id int,
booking_id int,
weight_in_kg float(2),
created_date date,
constraint PK_boggage_ID  primary key (id),
constraint FK_boggage_booking_ID  foreign key (booking_id) 
references booking(booking_id)
);

create table no_fly_list (
id int,
passenger_id int,
no_fly_reason varchar(20),
created_at date,
constraint PK_no_fly_list_ID  primary key (id),
constraint FK_no_fly_list_Passenger_ID  foreign key (passenger_id) 
references  passengers(id)
);

create table boggage_check (
id int,
passenger_id int,
booking_id int,
check_result varchar(20),
created_at date,
constraint PK_boggage_check_ID  primary key (id),
constraint FK_boggage_check_Passenger_ID  foreign key (passenger_id) 
references  passengers(id),
constraint FK_boggage_check_booking_ID  foreign key (booking_id) 
references booking(booking_id)
);

create table security_check (
id int,
passenger_id int,
Check_result varchar(20),
created_at date,
constraint PK_security_check_ID  primary key (id),
constraint FK_security_check_Passenger_ID  foreign key (passenger_id) 
references  passengers(id)
);

--drop table aeroport