def isbn13(num)

	i_13 = {}

	num = num.gsub(/\W\s?/, "")					#removes all dashes and whitespace, must be done at beginning.

	i = i_13[:isbn_13] = num 					#sets hashtag isbn13 to the value passed through the function

	

	i_13[:digits] = num.to_s.chars.map(&:to_i) 	#changes string into array

	ans = 0										#creating and setting variable to 0 for formula on following line.



	i_13[:digits].each_with_index{|val, idx| idx % 2 == 0 ? val : val * 3}   	#this formula multiplies every other element in the array.  The ? : statement means if index % 2 == 0, val stays val, else, val * 3

	sum = 0

	i_13[:digits].each_with_index{|val, idx| sum += val}   #this takes the result of the formula above, and add index position 0 with position 1, then the sum of that iwth position 2, etc to the end.

	

	c = i_13[:checkdig] = 10 - (sum % 10) 	#this takes the result above and does the final calculation required for the check digit.



	i_13



	return {:isbn_13=>i, :checkdig=>c}	#returns the results to isbnfunctiontest.rb

end

