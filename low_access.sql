drop table low_access;
drop table irsincome_df;
drop table heart_disease

create table low_access(
county varchar(50) not null,
state varchar(50) not null,
population_count INTEGER,
population_percent INTEGER,
low_income_count INTEGER,
low_income_percent	INTEGER,
households_no_car_count INTEGER,	
households_no_car_percent INTEGER,
snap_households_count INTEGER,
snap_households_percent	INTEGER,
children_count INTEGER,
children_percent INTEGER,
seniors_count INTEGER,
seniors_percent	INTEGER,
white_count	INTEGER,
white_percent INTEGER,
black_count	INTEGER,
black_percent INTEGER,
hispanic_count INTEGER,
hispanic_percent INTEGER,
asian_count	INTEGER,
asian_percent INTEGER,	
hawaiian_pacific_islander_count INTEGER,
hawaiian_pacific_islander_percent INTEGER,
multiracial_count INTEGER,
multiracial_percent	INTEGER,
american_indian_alaska_native_count	INTEGER,
american_indian_alaska_native_percent INTEGER
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
--FOREIGN KEY (County) REFERENCES low_access(County),
PRIMARY KEY (County));

select * from irsincome_df


CREATE TABLE heart_disease(
State VARCHAR(30) NOT NULL,
County VARCHAR(30) NOT NULL,
Heart_Disease_Mortality_Rate INTEGER,
Value_Unit VARCHAR(50) NOT NULL,
Location_ID INTEGER,
--FOREIGN KEY (County) REFERENCES low_access(County),
PRIMARY KEY (County));

select * from heart_disease
