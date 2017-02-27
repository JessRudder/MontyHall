def run
	puts "Welcome to the Monty Hall CLI Tester!"
	puts "Please wait while we run 100,000 tests..."
	game
end

def game
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
	
		staysTheSame = rand(0..2) 
		changesMind = staysTheSame 
	
		eliminateDoor = rand(0..2)
	
		while eliminateDoor == staysTheSame || choices[eliminateDoor] == 1
			eliminateDoor = rand(0..2)
		end
	
		while changesMind == eliminateDoor || changesMind == staysTheSame
			changesMind = rand(0..2)
		end
	end
	
	stayPercentWin = stayWins/testRounds*100
	changePercentWin = changeWins/testRounds*100
	
	puts("The player who stayed the course won " + stayPercentWin.to_s + "% of the time.")
	puts("The player who changed his mind won " + changePercentWin.to_s + "% of the time.")
	
end

run
