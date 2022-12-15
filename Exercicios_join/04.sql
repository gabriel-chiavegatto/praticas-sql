SELECT users.id,
		users.name,
		roles.name AS role,
		companies.name AS company,
		experiences."startDate"
	FROM experiences
JOIN users
	ON experiences."userId" = users.id
JOIN companies
	ON experiences."companyId" = companies.id
JOIN roles
	ON experiences."roleId" = roles.id
WHERE users.id = 50	
	AND experiences."endDate" IS NULL 
;