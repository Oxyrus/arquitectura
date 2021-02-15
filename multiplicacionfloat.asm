# Arquitectura MIPS
		.data
	
varA: 	.float	3.1415 # tambien podria ser double, que es precision doble
varB:	.float	2.0
result:	.float	0.0

	.text
	
	l.s	$f0, varA # Tiene que ser desde el coprocesador, por eso los registros en t1, t2... no sirven
	l.s	$f2, varB
	mul.s	$f12, $f0, $f2
	li 	$v0, 2
	syscall
