def valid_isbn?(isbn)
	isbn = removing_spaces(isbn)
	isbn = removing_dashes(isbn)

	if valid_isbn_ten_length?(isbn) && valid_isbn_ten_check_sum?(isbn)
		true
	else
		false #same as doing if else statement
	end
end

def valid_isbn_ten_length?(isbn)
	isbn.length == 10
end

	#isbn.delete(" ") is an alternative to gsub
def valid_isbn_ten_check_sum?(isbn)	
	ten_digit_array = isbn.chars.map!(&:to_i) #takes isbn and turns the string into an array
	#splits string into array of individual characters as integers and is shorthand for something longer
	sum = 0
	ten_digit_array.each_with_index do |value, index|
		break if index == 9
		sum += (index + 1) * value
	end
	checksum = sum % 11
	if checksum == 10
		checksum = "X"
	end
	checksum_string = checksum.to_s
	
	if checksum_string == isbn[-1].upcase
		true
	else
		false
	end
end

def valid_isbn_13_length?(isbn)
	isbn.length == 13
end

def valid_isbn_13_checksum?(isbn)
	sum = 0
	thirteen_digit_array = isbn.chars.map!(&:to_i)
	thirteen_digit_array.each_with_index do |value, index|
		break if index == 12
		if index % 2 == 0
			sum += value * 1
		else
			sum += value * 3
		end
	end
	pre_checksum = sum % 10
	checksum = 10 - pre_checksum
	end_checksum = checksum % 10
	end_checksum_string = end_checksum.to_s
		if end_checksum_string == isbn[-1]
			true
		else
			false
		end
	end
	

	# if ten_digit_array.last == 7
	# 	true
	# else
	# 	false
	# end




# def valid_isbn_ten_check_sum?(isbn)
# 	isbn[9] == "7"
# end


def removing_spaces(isbn)
	isbn.gsub(" ", "") #this strips the space and redefines isbn using the !
end

def removing_dashes(isbn)
	isbn.gsub("-", "") #this strips the dashes and redefines isbn using the !
	
end
