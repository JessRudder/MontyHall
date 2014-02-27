def game()
	staysTheSame = 0 #creates variable for player that sticks to their guns
	changesMind = 0 #creates variable for player that changes their mind
	winning_door = rand(0..2) #Randomly select one of the 3 doors as the winner
	choices = [0,0,0] #creates array that has the 3 doors
	choices[winning_door] = 1 #updates array so winning door has value of 1
	stayWins = 0.0 #creates variable for tracking wins of staying player (used float for later % calculation)
	changeWins = 0.0 #creates variable for tracking wins of changing palyer (used float...)
	testRounds = 10000000 #variable to determine # of test rounds

	for i in 1..testRounds   #for loop that will loop testRounds number of times
		stayWins = stayWins + choices[staysTheSame]      #add the value of their selected door to the player
		changeWins = changeWins + choices[changesMind]	 #only the winning door has a value of 1 so, only
								 #the winning player will have their score increase
		#	choices.each do |door|
		#		puts door
		#	end
	
		staysTheSame = rand(0..2)  #generates new door selection for staysTheSame
		changesMind = staysTheSame #ensures that changesMind and staysTheSame share new value
	
		# puts("staysTheSame: " + staysTheSame.to_s)
		# puts("changesMind: " + changesMind.to_s)
	
		eliminateDoor = rand(0..2)  #select a door to be eliminated
	
		while eliminateDoor == staysTheSame || choices[eliminateDoor] == 1 #checks if the door to be eliminated is the chosen door or the winning door
			eliminateDoor = rand(0..2)    #generates a new door to be eliminated (until it isn't 1 of the 2 doors listed above)
		end
	
		#	puts("Door " + eliminateDoor.to_s + " will be removed.")
	
		while changesMind == eliminateDoor || changesMind == staysTheSame  #this code helps the changesMind player switch to the door that was not the original selection or the one that was eliminated
			changesMind = rand(0..2)
			#puts("ChangesMind: " + changesMind.to_s)
		end
	#puts("stayWins: " + stayWins.to_s)
	#puts("changeWins: " + changeWins.to_s)
	end
	
	#puts(stayWins.to_s)
	#puts(changeWins.to_s)
	
	stayPercentWin = stayWins/testRounds*100 #create a % value for the stayWins
	changePercentWin = changeWins/testRounds*100 #create a % value for the changeWins
	
	#puts(stayPercentWin)
	#puts(changePercentWin)
	
	puts("The guy who stayed the course won " + stayPercentWin.to_s + "% of the time.") #print the winning % for
	puts("The guy who changed his mind won " + changePercentWin.to_s + "% of the time.")#both plaers for comparing
	
end

game()
