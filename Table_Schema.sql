drop table if exists clean_df;

CREATE TABLE clean_df (
	id SERIAL PRIMARY KEY,
	ADDRESS VARCHAR(255),
	SUBURB VARCHAR(255),
	PRICE INTEGER,
	BEDROOMS INTEGER,
	BATHROOMS INTEGER,
	GARAGE INTEGER,
	LAND_AREA INTEGER,
	FLOOR_AREA INTEGER,
	BUILD_YEAR INTEGER,
	CBD_DIST INTEGER,
	NEAREST_STN VARCHAR(255),
	NEAREST_STN_DIST INTEGER,
	POSTCODE INTEGER,
	LATITUDE FLOAT,
	LONGITUDE FLOAT,
	NEAREST_SCH VARCHAR(255),
	NEAREST_SCH_DIST FLOAT,
	NEAREST_SCH_RANK FLOAT,
	BED_GROUP VARCHAR(255),
	PROPERTY_AGE INTEGER,
	YEAR_SOLD INTEGER,
	MONTH_SOLD INTEGER
);

SELECT * FROM clean_df;