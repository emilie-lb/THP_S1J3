def ask_level
	puts "Salut! Bienvenue dans ma pyramide! Combien d'étages veux-tu? (choisir un nombre impair entre 1 et 25)"
	print ">"
	level= gets.chomp.to_i
	if level%2 == 0 || level <1 || level > 25
		puts "Je n'ai pas envie de faire cette pyramide car j'aime seulement les nombres impairs entre 1 et 25."
		puts "Choisis un autre nombre!(un nombre impair entre 1 et 25)"
		print ">"
		level= gets.chomp.to_i
	else
		return level
	end
	
end 

def half_pyramid(level)
	level.times do |i|
		puts " "*(level-i) + "#"*(i + 1)
		i +=1
	end	
end

def full_pyramid(level)
	level.times do |i|
		puts " "*(level - i) + "#"*(2 * i + 1)
		i +=1
	end	
end

def wtf_pyramid(level)
	level.times do |i|
		if i <= level/2 
			puts " "*(level - i) + "#"*(2 * i + 1)
			i +=1
		else 
			puts " "*(i + 1) + "#"*(2 * (level - i) - 1)
		end
	end	

end

def perform 
	level = ask_level
	half_pyramid(level)
	full_pyramid(level)
	wtf_pyramid(level)
end

perform