def game()
	staysTheSame = 0
	changesMind = 0
	winning_door = rand(0..2)
	choices = [0,0,0]
	choices[winning_door] = 1
	stayWins = 0.0
	changeWins = 0.0
	testRounds = 10000000

	for i in 1..testRounds
		stayWins = stayWins + choices[staysTheSame]
		changeWins = changeWins + choices[changesMind]	
	
		#	choices.each do |door|
		#		puts door
		#	end
	
		staysTheSame = rand(0..2)
		changesMind = staysTheSame
	
		# puts("staysTheSame: " + staysTheSame.to_s)
		# puts("changesMind: " + changesMind.to_s)
	
		eliminateDoor = rand(0..2)
	
		while eliminateDoor == staysTheSame || choices[eliminateDoor] == 1
			eliminateDoor = rand(0..2)
		end
	
		#	puts("Door " + eliminateDoor.to_s + " will be removed.")
	
		while changesMind == eliminateDoor || changesMind == staysTheSame
			changesMind = rand(0..2)
			#puts("ChangesMind: " + changesMind.to_s)
		end
	#puts("stayWins: " + stayWins.to_s)
	#puts("changeWins: " + changeWins.to_s)
	end
	
	puts(stayWins.to_s)
	puts(changeWins.to_s)
	
	stayPercentWin = stayWins/testRounds*100
	changePercentWin = changeWins/testRounds*100
	
	#puts(stayPercentWin)
	#puts(changePercentWin)
	
	puts("The guy who stayed the course won " + stayPercentWin.to_s + "% of the time.")
	puts("The guy who changed his mind won " + changePercentWin.to_s + "% of the time.")
	
end

game()