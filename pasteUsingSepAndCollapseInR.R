#The difference between the `sep` and `collapse` arguments
# in paste can be thought of like this:
# 
# paste can accept multiple *vectors* as input, and will
# concatenate the ith entries of each vector pairwise 
# (or tuplewise), if it can.
# 
# When you pass paste multiple vectors, sep defines what
# separates the entries in those tuple-wise concatenations.
# 
# When you pass paste a *collapse* value, it will return
# any concatenated pairs as part of a single length-1 
# character vector, with the tuples separated by 
# the string you passed to `collapse`

x <- c("a", "b", "c", "d")
y <- c("w", "x", "y", "z")

# The statement below will return
# "a%%w" "b%%x" "c%%y" "d%%z"
# A tuple of character concatenations, where within
# each tuple, the concatenations are separated by the sep
# argument
paste(x, y, sep="%%")

# The statement below this will return
# "a%%w,b%%x,c%%y,d%%z"
# It's the same tuple-wise concatenation as above,
# but this time there's the additional step of reducing
# the output to a vector of length one and shoving the 
# collapse value between the entries. Note how in the output
# there are four instances of "%%", but only three of "," 
paste(x, y, sep="%%", collapse=",")

# To confirm our conjecture, we can swap the sep and 
# collapse arguments. The statement below will return
# "a,w%%b,x%%c,y%%d,z"
paste(x, y, sep=",", collapse="%%")