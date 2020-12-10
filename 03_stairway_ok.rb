def init
	puts "Pour gagner, il faut que vous arriviez sur la marche 10."
	puts "Pour lancer la partie, appuyez sur la touche 'Entrée'."
	print ">"
	gets.chomp
end

def roll
	return rand(6)+1
end

def event(number)
	if number >= 5
		puts "Vous avez fait #{number}. Vous avancez d'un marche! :)"
		return +1
	elsif number == 1
		puts "Vous avez fait #{number}. Vous descendez d'une marche. :("	
		return -1
	else
		puts "Vous avez fait #{number}. Chat glace! Vous ne bougez pas!"
		return 0	
	end
end

def new_level(level)
	if level <=0
		level = 1
	end
	puts "Vous êtes à la marche #{level}"
	return level
end

def you_win(level)
	if level == 10
		return true
	else
		return false
	end 
end

def play
	level =1

	while you_win(level)== false do
		#puts "Jouer! (tapez 'Entrée') >"
		#gets.chomp
		level = level + event(roll)
		if level <= 0
			level = 1
		end
		new_level(level)
		puts level
	end

	puts "You Win!"
end


play