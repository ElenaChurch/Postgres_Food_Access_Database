
create table low_access(
County varchar (50) not null,
State varchar (50) not null,
Population_count INTEGER,
Population_percent INTEGER,
Low_income_count INTEGER,
Low_income_percent	INTEGER,
Households_no_car_count INTEGER,	
Households_no_car_percent INTEGER,
SNAP_households_count INTEGER,
SNAP_households_percent	INTEGER,
Children_count INTEGER,
Children_percent INTEGER,
Seniors_count INTEGER,
Seniors_percent	INTEGER,
White_count	INTEGER,
White_percent INTEGER,
Black_count	INTEGER,
Black_percent INTEGER,
Hispanic_count INTEGER,
Hispanic_percent INTEGER,
Asian_count	INTEGER,
Asian_percent INTEGER,	
Hawaiian_Pacific_Islander_count INTEGER,
Hawaiian_Pacific_Islander_percent INTEGER,
Multiracial_count INTEGER,
Multiracial_percent	INTEGER,
American_Indian_Alaska_Native_count	INTEGER,
American_Indian_Alaska_Native_percent INTEGER,
PRIMARY KEY (County)
);

select * from low_access


CREATE TABLE irsincome_df(
County  varchar(30),
Number_of_Returns INTEGER,
Single_Returns INTEGER,
Joint_Returns INTEGER,
Elderly_Returns INTEGER,
Total_Income_Amount INTEGER,
Returns_w_Uunemployment_Compensation INTEGER,
Unemployment_Compensation_Amount INTEGER,
FOREIGN KEY (County) REFERENCES low_access(County),
PRIMARY KEY (County));

select * from irsincome_df


CREATE TABLE heart_disease(
State VARCHAR(30) NOT NULL,
County VARCHAR(30) NOT NULL,
Heart_Disease_Mortality_Rate INTEGER,
Value_Unit VARCHAR(50) NOT NULL,
Location_ID INTEGER,
FOREIGN KEY (County) REFERENCES low_access(County),
PRIMARY KEY (County));

select * from heart_disease
