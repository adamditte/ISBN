def good_luck?(winners, my_number)
	my_winner=[] 	#sets up empty array 
	if winners.include?(my_number)	#compares for my_number in array winners
		my_winner << my_number # moves my winner into output array
	end
	my_winner # moves my_winner into good luck
end
def off_by_one(winners, my_number)
	my_winner=[]	#set up the empty array
	nav_array = winners.length  #code to start moving through the array
	# nav_array = 3			# hard code to create 4 loops
	pars_winners = 0			# creates the pointer for the array element
	
	match = 0				# sets up a flag to move winners into my_winners
	 while pars_winners < nav_array do	# starts the pointer for the array
	 	pars_string=0			# sets the pointer for the character in the string
	 	string_length=4
	 	while pars_string < string_length do
	 		if winners[pars_winners][pars_string]== my_number[pars_string]
				match += 1
			end


	 		pars_string +=1
	 	end

	 		
	 		if winners[pars_winners][0]== my_number[0]
				match += 1
			end
			# if winners[pars_winners][1]== my_number[1]
			# 	match += 1
			# end
			# if winners[pars_winners][2]== my_number[2]
			# 	match += 1
			# end
			# if winners[pars_winners][3]== my_number[3]
			# 	match +=1
			# end

	 		if match == 3           # moves winer[pars_winners] into the my winners array
	 			my_winner << winners[pars_winners]
	 		end
	 		pars_winners +=1
	 		match = 0
	 	end
	 	
	 my_winner   #moves my_winner into good_luck?
	 end