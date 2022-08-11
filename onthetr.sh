# the tr command: translate or delete characters
# syntax: tr [OPTION]... SET1 [SET2]
# SET1 is what you are deleting or replacing
# SET2, when in use, is what replaces SET1

# -c, -C, --complement
# use the complement of SET1
# the line below takes every thing that is NOT a space " "
# and replaces it with the letter "b" or SET2
# cat awslp.txt | tr -c " " "b"
# -s option is for "squeeze repeats"
# cat awslp.txt | tr -sc " " "A"

# make all letters uppercase
# cat awslp.txt | tr "[:lower:]" "[:upper:]"

# make all letters lower
# cat awslp.txt | tr "[:upper:]" "[:lower:]"

# -d is for delete
# cat awslp.txt | tr -d " "

# INTERESTING: delete all lowercase letters
# cat awslp.txt | tr -d "[:lower:]"

# -cd is for delete the complement (or everything other than SET1)

# replace every space with the string "space"

# cat awslp.txt | tr " " "0"
