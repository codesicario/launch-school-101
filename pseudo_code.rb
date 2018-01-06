#Problem 1
# a method that returns the sum of two integers

# ask for user to input two integers
# set value of input in two different variables
# return sum of variables

#START
# ask user to input two integers

# GET user input

# SET num1 = first user input
# SET num2 = second user input

#PRINT "The sum of your numbers are {num1} + {num2}"

#END

#----------------------------------------------------

#Problem 2
# a method that takes an array of strings, and returns a string that is all those strings concantenated together.

#Given an array of strings
#Set value of array
#Set value of return string
#Iterate over each array element
#Put those elements into the strings

#START
#GET Given an array of string elements

#SET arr_strings = elements in array
#SET one_string = ""

#READ arr_strings.each { |word| one_string << "{word}" }

#PRINT one_string

#END

#----------------------------------------------------

#Problem 3
# a method that takes an array o integers and returns a new array containing every other element.

#Given an array of integers
#Set value of array
#Set value of new array
#Iterate over every element by index
#Put even numbered index elements in new array

#START
#GET Given an array of integers

#SET arr_int = elements in given array
#SET arr_every_other = []

#IF arr_int.select.with_index { |int| index.even? }
# => arr_every_other << even numbered index elements

#PRINT arr_every_other

#END
