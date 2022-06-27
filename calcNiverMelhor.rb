#Calculadora de aniversario, os resultados aqui mostrados são verdadeiros. Pode confiar!

def perguntarAoUsuario
    entrada = gets.chomp.upcase
    if entrada != "SIM" && entrada != "NÃO"
        print "ENTRADA INVÁLIDA. DIGITE SIM OU NÃO"
		exit
    end
	return entrada
end

puts "---------------------------------------"
puts "Calculadora de festas"
puts "---------------------------------------"

print "Quantas pessoas você convidará?
adultos =  "
        numero_adultos = gets.chomp.to_i

print "crianças (de 5 a 11 anos) = "
        numero_criancas = gets.chomp.to_i

puts "** O que você irá servir? (responda SIM ou NÃO) **"
print "docinhos = "
tem_docinho = perguntarAoUsuario

print "bolo = " 
tem_bolo = perguntarAoUsuario
        
print "salgadinhos = " 
tem_salgadinho = perguntarAoUsuario

print "hot dog = " 
tem_hotdog = perguntarAoUsuario

print "água/suco = "
tem_agua = perguntarAoUsuario

print "refrigerante/cerveja = "
tem_refri = perguntarAoUsuario

if tem_docinho == "NÃO" && tem_bolo == "NÃO"
	print "Como assim???? Não existe festa de aniversário sem docinhos e bolo!"
	exit;
end

if tem_salgadinho == "NÃO" && tem_hotdog == "NÃO"
	print "Como assim???? Não existe festa de aniversário sem salgadinho e hotdog!"
	exit;
end

if tem_agua == "NÃO" && tem_refri == "NÃO"
	print "Você vai deixar seus convidados com sede??"
	exit;
end

calc_adulto_docinho = 7
calc_adulto_bolo = 0.1
calc_adulto_hotdog = 2
calc_adulto_salgadinho = 12
calc_adulto_agua_suco = 0.400
calc_adulto_refri_cerveja = 0.600
calc_crianca_docinho = 5
calc_crianca_bolo = 0.070
calc_crianca_hotdog = 2
calc_crianca_salgadinho = 7
calc_crianca_agua_suco = 0.400
calc_crianca_refri = 0.200

if tem_docinho == "NÃO"
	calc_adulto_bolo = calc_adulto_bolo * 1.8
	calc_crianca_bolo = calc_crianca_bolo * 1.8
end

if tem_bolo == "NÃO"
	calc_adulto_docinho= calc_adulto_docinho * 2
	calc_crianca_docinho = calc_crianca_docinho * 2
end

if tem_salgadinho == "NÃO"
	calc_adulto_hotdog = calc_adulto_hotdog * 2.5
	calc_crianca_hotdog = calc_crianca_hotdog * 2
end

if tem_hotdog == "NÃO"
	calc_adulto_salgadinho= calc_adulto_salgadinho * 1.5
	calc_crianca_salgadinho = calc_crianca_salgadinho * 1.5
end

if tem_agua == "NÃO"
	calc_adulto_refri_cerveja = calc_adulto_refri_cerveja * 1.6
	calc_crianca_refri = calc_crianca_refri * 1.6
end

if tem_refri == "NÃO"
	calc_adulto_agua_suco = calc_adulto_agua_suco* 1.6
	calc_crianca_agua_suco = calc_crianca_agua_suco * 1.6
end

puts "**  A quantidade de comida/bebida será  **\n"

if tem_docinho == "SIM"
	print "docinhos = #{(numero_adultos * calc_adulto_docinho) + (numero_criancas * calc_crianca_docinho)} unidades\n"
end

if tem_bolo == "SIM"
	print "bolo = #{((numero_adultos * calc_adulto_bolo) + (numero_criancas * calc_crianca_bolo)).round(2)} quilo(s)\n"
end

if tem_salgadinho == "SIM"
	print "salgadinho = #{((numero_adultos * calc_adulto_salgadinho) + (numero_criancas * calc_crianca_salgadinho)).round(2)} unidades\n"
end

if tem_hotdog == "SIM"
	print "hot dog = #{(numero_adultos * calc_adulto_hotdog) + (numero_criancas * calc_crianca_hotdog)} unidades\n"
end

if tem_agua == "SIM"
	print "água/suco = #{((numero_adultos * calc_adulto_agua_suco) + (numero_criancas * calc_crianca_agua_suco)).round(2)} litro(s)\n"
end

if tem_refri =="SIM"
	print "refrigerante/cerveja = #{((numero_adultos * calc_adulto_refri_cerveja) + (numero_criancas * calc_crianca_refri)).round(2)} litro(s)\n"
end

puts "Obs: Este cálculo é uma média para festa de 4 horas."
