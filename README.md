MARKING
- goto <mark-name>		# Go to the specified mark
- mark <mark-name>		# Add the current directory as a mark with the given name
- list					# List all marks
- clrmarks				# Clear all marks
- remove <mark-name>	# Remove a specified mark
- pin					# Creates a pin for immediate use
- back					# Goes back to the pin
- finder <mark-name>    # Opens the mark in finder
- sortmarks             # Sorts the marks in alphabetical order

MACROS
- clrmacros                     # Clears the macros from the command
- recordmacro <name> <command>  # Records a new macro
- listmacros                    # Lists the macros

MOVEMENT
- clrdir				# Clears the current directory
- cdn <n>				# Go into the n'th file in the current directory (does not like spaces)
- lsn					# Display all files in the current directory, numbered alphabetically
- lc                    # Clears the current screen, and then outputs the contents of the current directory

MISC
- cmake					# Not sure what this does, and too lazy to look back at the function
- localhost <port-num>  # Opens chrome to the specified port

VIRTUALENV
- activate <env-name?>  # Activates the virtual environment in the working direction. The name defaults to 'venv'

LATEX
- gendocument			# Generates a latex document with my customized header
- genmatrix				# Generates a matrix with () to use in a latex document

Angular
- gendoublebinding		# Generates a double binding for a specified variable with specified type


Git
- quickcommit <message>	# Adds all files with 'git add .', and then commits the change with the given message
- quickpush <message> 	# Does quickcommit <message>, then pushes the results

ZSH
