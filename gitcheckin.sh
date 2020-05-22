#!/bin/bash
PS3="What repo you want to make changes in: "

options=("python_examples" "interview_questions" "quit")

select opt in "${options[@]}" 
do 
	case $opt in 
		python_examples) 
			cd /Users/saraddhungel/Documents/Coding_exercises/python_examples
			select option in "commit_n_push" "status" "branch"
			do
				case $option in 
					commit_n_push) 
						read -p "Enter your commit message: " msg
						git add *
						git commit -m "${msg}"
						echo "------Commited----------"
						git push -u origin master
						echo "------Pushed to Master-----"
						;;
					status)
						git status
						;;
					branch)
						git branch
						;;
				esac
				break
			done
			;;
		interview_questions)
			cd /Users/saraddhungel/Documents/Coding_exercises/python_examples
			select option in "commit_n_push" "status" "branch"
			do
				case $option in 
					commit_n_push) 
						read -p "Enter your commit message: " msg
						git add *
						git commit -m "${msg}"
						echo "------Commited----------"
						git push -u origin master
						echo "------Pushed to Master-----"
						;;
					status)
						git status
						;;
					branch)
						git branch
						;;
				esac
				break
			done
			;;
		quit) break
			;;
		*) echo "Not a match.. try again!" 
			;;
	esac
done