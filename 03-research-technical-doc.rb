######## STRING #######

# Arguments =
# Returns =

# .length # Returns the character length of str.
# Arguments = accepts a string
# Returns integer
"string".length                 #=> 6


# .strip #

# Arguments = string
# Returns = a copy of the str with leading and trailing whitespace removed.
"    string    ".strip   #=> "string"
"\tgoodbye\r\n".strip   #=> "goodbye"

# .split Splits a string using the separator we gave it
# Arguments =
# Returns =

" this is a string".split       #=> ["this", "is", "a", "string"]
" this is a string".split (' ') #=> ["this", "is", "a", "string"]



# TIME .now Returns a Time object initialized to the current system time. #
# Arguments = accept seconds, minutes, hours, days, months and years,
# Returns = Time object


# .split divide strings into substrings
# Arguments = strings + prefixes + limiters
# Returns = an Array of substrings

" this is a test ".split        #=> ["this", "is", "a", "test"]
" an example of a split string".split(/ /)   #=> ["", "an", "example", "of", "a", "split", "string"]

# .start_with? returns true if a string starts with one of the prefixes given
# Arguments = string + prefixes
# Returns = true or false // boolean

"Bitmaker".start_with?('B')     #=> true

"Bitmaker".start_with?('C', "Bit") #=> true

##### ARRAY ######

# .first Returns the first element, or the first n elements, of the array. nil if the array is empty
# Arguments = a.first(n) n= number of arrays
# Returns = element/s of the array

a = [ "Bit", "maker", "W", "D" ]
a.first     #=> "Bit"
a.first(2)  #=> ["Bit", "maker"]

# .delete_at deletes element at specified index

# Arguments = a.delete_at(index)
# Returns = delete the specified element or nil if out of range.

a = [ "Bit", "maker", "W", "D" ]
a.delete_at(2)    #=> "maker"
a                 #=> ["Bit", "W", "D"]
a.delete_at(99)   #=> nil

# .delete
# Arguments = a.delete(obj)
# Returns = Returns the last deleted item, or nil if no matching item is found.
a = [ "Bit", "maker", "W", "maker" ]
a.delete("maker")                   #=> "maker"
a                               #=> ["Bit", "W"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"


# .pop
# Arguments = a.pop(n) number of items to be deleted
# Returns = Removes the last element from self and returns it, or nil if the array is empty.
a = [ "Bit", "maker", "W", "maker" ]
a.pop     #=> "maker"
a.pop(2)  #=> ["maker", "W"]
a         #=> ["Bit"]


###### HASH ######

# .to_a
# Arguments = a.to_a
# Returns = Converts hash to a nested array of (key, value) arrays

a = { "B" => 100, "i" => 200, "t" => 300, "m" => 400  }
a.to_a   #=> [["B", 100], ["i", 200], ["t", 300], ["m", 400]]

# .has_key?
# Arguments = a.has_key?("Bit")
# Returns = returns true if the given key is present in the hash

b = { "Bit" => 100, "maker" => 200 }
b.has_key?("Bit")   #=> true
b.has_key?("Bitmaker")   #=> false


# .has_value?
# Arguments = a.has_value?("Bit")
# Returns = True or False
h = { "Bit" => 100, "maker" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

# .time
# Arguments = a.time Creates a new time object for the current time.
# Returns = return an object for the current time

Time.now                        #=> 2017-09-21 16:40:56 -0400


######### FILE ######

# .exist?
# Arguments =  exist?(file_name)
# Returns = Return true if the named file exists.

File.exist?(03-research-technical-doc.rb)


# .extname
File.extname("test.rb")         #=> ".rb"
File.extname("foo.")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"
