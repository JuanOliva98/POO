a = String.new('Hola Mundo')
b = String.new('Hola Mundo')

puts a == b # --> true
puts a === b # --> true
puts a.eql? b # --> true
puts a.equal? b # --> false
puts a <=> b  # --> 0


# === ) Case Equality – For class Object, effectively the same as calling ==, 
# but typically overridden by descendants to provide meaningful semantics in case statements.

# At the Object level, == returns true only if obj and other are the same object. 
# Typically, this method is overridden in descendant classes to provide class-specific meaning.

# Unlike ==, the equal? method should never be overridden by subclasses as it is used to determine object identity 
# (that is, a.equal?(b) if and only if a is the same object as b)

# The eql? method returns true if obj and other refer to the same hash key. This is used by Hash to test members for equality.
# For objects of class Object, eql? is synonymous with ==. 
# Subclasses normally continue this tradition by aliasing eql? to their overridden == method, but there are exceptions. 
# Numeric types, for example, perform type conversion across ==, but not across eql?

# Returns 0 if obj and other are the same object or obj == other, otherwise nil.
# The <=> is used by various methods to compare objects, for example Enumerable#sort, Enumerable#max etc.
#Your implementation of <=> should return one of the following values: -1, 0, 1 or nil. 
#-1 means self is smaller than other. 0 means self is equal to other. 1 means self is bigger than other. 
#Nil means the two values could not be compared.
