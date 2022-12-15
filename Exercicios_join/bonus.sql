SELECT schools.id,
		schools.name AS school,
		courses.name AS course,
		companies.name AS company,
		roles.name AS role
	FROM jobs
JOIN companies 
    ON jobs."companyId" = companies.id
JOIN roles 
    ON jobs."roleId" = roles.id
JOIN experiences 
    ON roles.id = experiences."roleId"
JOIN users 
    ON experiences."userId" = users.id
JOIN educations 
    ON users.id = educations."userId"
JOIN schools 
    ON educations."schoolId" = schools.id
JOIN courses 
    ON educations."courseId" = courses.id

WHERE jobs.active IS TRUE 
	AND jobs."companyId" = 10
;