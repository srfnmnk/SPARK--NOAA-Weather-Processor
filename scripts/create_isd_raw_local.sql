drop table if exists isd_raw;
create table isd_raw (UASF bigint COMMENT "AIR FORCE CATALOG STATION NUMBER",
WBAN bigint COMMENT "NCDC WBAN NUMBER",
obs_ts_raw bigint COMMENT "YEAR-MONTH-DAY-HOUR-MINUTE IN GREENWICH MEAN TIME (GMT)",
obs_ts timestamp COMMENT "YEAR-MONTH-DAY-HOUR-MINUTE IN GREENWICH MEAN TIME (GMT)",
dir int COMMENT "WIND DIRECTION IN COMPASS DEGREES, 990 = VARIABLE, REPORTED AS '***' WHEN AIR IS CALM (SPD WILL THEN BE 000)",
spd int COMMENT "WIND SPEED IN MILES PER HOUR",
gus int COMMENT "WIND GUST IN MILES PER HOUR",
clg int COMMENT "CLOUD CEILING--LOWEST OPAQUE LAYER WITH 5/8 OR GREATER COVERAGE, IN HUNDREDS OF FEET, 722 = UNLIMITED ",
skc string COMMENT "SKY COVER -- CLR-CLEAR, SCT-SCATTERED-1/8 TO 4/8, BKN-BROKEN-5/8 TO 7/8, OVC-OVERCAST, OBS-OBSCURED, POB-PARTIAL OBSCURATION",
L int COMMENT "LOW CLOUD TYPE, SEE REF",
M int COMMENT "MED CLOUD TYPE, SEE REF",
H int COMMENT "HIGH CLOUD TYPE, SEE REF",
vsb float COMMENT "VISIBILITY IN STATUTE MILES TO NEAREST TENTH",
mw1 int COMMENT "MANUALLY OBSERVED PRESENT WEATHER--LISTED IN REFERENCE IN MANUALLY OBSERVED PRESENT WEATHER TABLE",
mw2 int COMMENT "MANUALLY OBSERVED PRESENT WEATHER--LISTED IN REFERENCE IN MANUALLY OBSERVED PRESENT WEATHER TABLE",
mw3 int COMMENT "MANUALLY OBSERVED PRESENT WEATHER--LISTED IN REFERENCE IN MANUALLY OBSERVED PRESENT WEATHER TABLE",
mw4 int COMMENT "MANUALLY OBSERVED PRESENT WEATHER--LISTED IN REFERENCE IN MANUALLY OBSERVED PRESENT WEATHER TABLE",
aw1 int COMMENT "AUTO-OBSERVED PRESENT WEATHER--LISTED IN REF IN AUTO-OBSERVED PRESENT WEATHER TABLE",
aw2 int COMMENT "AUTO-OBSERVED PRESENT WEATHER--LISTED IN REF IN AUTO-OBSERVED PRESENT WEATHER TABLE",
aw3 int COMMENT "AUTO-OBSERVED PRESENT WEATHER--LISTED IN REF IN AUTO-OBSERVED PRESENT WEATHER TABLE",
aw4 int COMMENT "AUTO-OBSERVED PRESENT WEATHER--LISTED IN REF IN AUTO-OBSERVED PRESENT WEATHER TABLE",
W int COMMENT "PAST WEATHER INDICATOR, SEE REF",
temp float COMMENT "TEMPERATURE IN FAHRENHEIT ",
dewp float COMMENT "DEW POINT IN FAHRENHEIT ",
slp float COMMENT "SEA LEVEL PRESSURE IN MILLIBARS TO NEAREST TENTH",
alt float COMMENT "ALTIMETER SETTING IN INCHES TO NEAREST HUNDREDTH",
stp float COMMENT "STATION PRESSURE IN MILLIBARS TO NEAREST TENTH",
max float COMMENT "MAXIMUM TEMPERATURE IN FAHRENHEIT (TIME PERIOD VARIES)",
min float COMMENT "MINIMUM TEMPERATURE IN FAHRENHEIT (TIME PERIOD VARIES)",
pcp01 int COMMENT "1-HOUR LIQUID PRECIP REPORT IN INCHES AND HUNDREDTHS",
pcp06 int COMMENT "6-HOUR LIQUID PRECIP REPORT IN INCHES AND HUNDREDTHS",
pcp24 int COMMENT "24-HOUR LIQUID PRECIP REPORT IN INCHES AND HUNDREDTHS",
pcpxx int COMMENT "LIQUID PRECIP REPORT IN INCHES AND HUNDREDTHS, FOR A PERIOD OTHER THAN 1, 6, OR 24 HOURS",
sd int COMMENT "SNOW DEPTH IN INCHES")
stored as parquet