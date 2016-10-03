def isbn10(num)

	i_10 = {}

	num = num.gsub(/\W\s?/, "") #removes all dashes and whitespace.

	i = i_10[:isbn] = num   # this sets a hash for isbn, still figuring out the hash keys but it required them and they make it work.

	d = i_10[:digits] = num.to_s.chars.map(&:to_i)  #changes the string to an array

	

	ans = 0	#setting a variable to 0 for the formula below.  Not sure if its required.  In C, if you didn't set a variable to 0, it would be a random number accessed from memory, so its a habit.

	

	i_10[:digits].each_with_index {| num, idx | ans += (idx + 1) * num }  #num = value, index = position in array.  (idx + 1) makes sure the formula starts with multiplying 1 and not 0. 

	

	c = i_10[:checkdig] = ans % 11 #this sets the hashtag for the check digit and solves for it

		if i_10[:checkdig] == 10   # if check digit = 10, set the value to "x"

			c = "x"

		end

	i_10

	return {:digits=>d, :isbn=>i, :checkdig=>c} #pass them along to isbnfunctiontest.rb.

end
