SELECT testimonials.id, 
		x.name AS writer,
		y.name AS recipient,
		testimonials.message 
	FROM users x
JOIN testimonials
	ON x.id = testimonials."writerId"
JOIN users y
	ON testimonials."recipientId" = y.id;