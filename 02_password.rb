def signup
	puts "Définis ton mot de passe, stp."
	print ">"
	user_password = gets.chomp
	return user_password
end

def login(user_password)
	puts "Pour te logger, merci de rentrer ton mot de passe:"
	print ">"
	login_password = gets.chomp
	
	while user_password != login_password
		puts "Erreur de mot de passe, essaye encore:"
		print ">"
		login_password = gets.chomp
	end	
	return login_password

end

def welcom_screen
	puts "Hola!"
	puts "Bienvenue dans ton espace super secret!"
end

def perform 
	user_password = signup
	login(user_password)
	welcom_screen

end

perform