def valid_isbn?(isbn)
	isbn = removing_spaces(isbn)
	isbn = removing_dashes(isbn)

	if valid_isbn_ten_length?(isbn) && valid_isbn_ten_check_sum?(isbn)
		true
	else
		false #same as doing if else statement
	end

	#isbn.delete(" ") is an alternative to gsub
	
	# ten_digit_array = isbn.chars.map!(&:to_i) #takes isbn and turns the string into an array
	#splits string into array of individual characters as integers and is shorthand for something longer
	# sum = 0
	# ten_digit_array.each_with_index do |value, index|
	# 	break if index == 9
	# 	sum += (index + 1) * value
	# end
	# if ten_digit_array.last == 7
	# 	true
	# else
	# 	false
	# end
end

def valid_isbn_ten_length?(isbn)
	isbn.length == 10
end


def valid_isbn_ten_check_sum?(isbn)
	isbn[9] == "7"
end


def removing_spaces(isbn)
	isbn.gsub(" ", "") #this strips the space and redefines isbn using the !
end

def removing_dashes(isbn)
	isbn.gsub("-", "") #this strips the dashes and redefines isbn using the !
	
end
