DROP PROCEDURE UPDATE_LEADERS_SCORE;
--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_LEADERS_SCORE  (
    IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
LANGUAGE SQL 
MODIFIES SQL DATA

BEGIN
	UPDATE PUBLIC_SCHOOLS
 	SET Leaders_Score = in_Leader_Score
 	WHERE School_ID = in_School_ID;
	IF in_Leader_Score < 20 THEN
		UPDATE PUBLIC_SCHOOLS
		SET Leaders_Icon =  'Very weak'
		WHERE School_ID = in_School_ID;
	ELSEIF in_Leader_Score >= 20 and in_Leader_Score < 40 THEN
		UPDATE PUBLIC_SCHOOLS
		SET Leaders_Icon =  'Weak'
		WHERE School_ID = in_School_ID;	
	ELSEIF in_Leader_Score >= 40 and in_Leader_Score < 60 THEN
		UPDATE PUBLIC_SCHOOLS
		SET Leaders_Icon =  'Average'
		WHERE School_ID = in_School_ID;	
	ELSEIF in_Leader_Score >= 60 and in_Leader_Score < 80 THEN
		UPDATE PUBLIC_SCHOOLS
		SET Leaders_Icon =  'Strong'
		WHERE School_ID = in_School_ID;			
	ELSEIF in_Leader_Score >= 80 and in_Leader_Score < 100 THEN
		UPDATE PUBLIC_SCHOOLS
		SET Leaders_Icon =  'Very strong'
		WHERE School_ID = in_School_ID;
	ELSE
		ROLLBACK WORK;
	END IF;
	COMMIT WORK;


END
@