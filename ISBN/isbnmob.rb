def valid_isbn?(isbn)
	isbn.gsub!(" ", "")
	isbn.gsub!("-", "") #this strips the whitespace and redefines isbn using the !
	isbn.length == 10 #same as doing if else statement

end
