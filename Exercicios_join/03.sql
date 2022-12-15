SELECT users.id,
		users.name,
		courses.name AS course,
		schools.name AS school,
		educations."endDate" AS "endDate"
	FROM educations
JOIN courses
	ON educations."courseId" = courses.id
JOIN users
	ON educations."userId" = users.id
JOIN schools
	ON educations."schoolId" = schools.id
WHERE educations."userId" = 30 
	AND educations.status = 'finished';