def valid_isbn?(isbn)
	isbn = removing_spaces(isbn)
	isbn = removing_dashes(isbn)

	isbn.length == 10 #same as doing if else statement

	#isbn.delete(" ") is an alternative to gsub

end

def removing_spaces(isbn)
	isbn.gsub(" ", "") #this strips the space and redefines isbn using the !
end

def removing_dashes(isbn)
	isbn.gsub("-", "") #this strips the dashes and redefines isbn using the !
	
end
