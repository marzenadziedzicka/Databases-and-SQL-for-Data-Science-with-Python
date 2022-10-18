--Problem 1_
--List the case number, type of crime and community area for all crimes in community area number 18.
SELECT cr.CASE_NUMBER, cr.PRIMARY_TYPE, cd.COMMUNITY_AREA_NAME
from CRIME_DATA cr
INNER JOIN CENSUS_DATA cd
ON cr.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
WHERE cr.COMMUNITY_AREA_NUMBER = 18

--Problem 2
--List all crimes that took place at a school. Include case number, crime type and community name.
SELECT cr.CASE_NUMBER, cr.PRIMARY_TYPE, cd.COMMUNITY_AREA_NAME
from CRIME_DATA cr
LEFT OUTER JOIN CENSUS_DATA cd
ON cr.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
WHERE cr.LOCATION_DESCRIPTION LIKE '%SCHOOL%'

--Problem 3
--For the communities of Oakland, Armour Square, Edgewater and CHICAGO list the associated community_area_numbers and the case_numbers.
SELECT cd.COMMUNITY_AREA_NAME, cd.COMMUNITY_AREA_NUMBER, cr.CASE_NUMBER
from CENSUS_DATA cd 
FULL OUTER JOIN CRIME_DATA cr
on cr.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
WHERE cd.COMMUNITY_AREA_NAME in ('Oakland', 'Armour Square', 'Edgewater', 'CHICAGO')


