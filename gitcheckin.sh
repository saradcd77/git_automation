#!/bin/bash
# Author: Sarad Dhungel

green=$(tput setaf 2)
bold="\033[1m"
PS3="What repo you want to make changes in: "
path="${HOME}"

options=("python_examples" "interview_problems" "quit")

select opt in "${options[@]}" 
do 
	case $opt in 
		python_examples) 
			cd "$path/Documents/Coding_exercises/python_examples"
			PS3="What do you want to do in ${options[0]} repo: "
			select option in "commit_n_push" "status" "branch"
			do
				case $option in 
					commit_n_push) 
						read -p "Enter your commit message: " msg
						git add *
						git commit -m "${msg}"
						git push -u origin master
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
		interview_problems)
			cd "$path/Documents/Coding_exercises/interview_problems"
			PS3="What do you want to do in ${options[1]} repo: "
			select option in "commit_n_push" "status" "branch"
			do
				case $option in 
					commit_n_push) 
						read -p "Enter your commit message: " msg
						git add *
						git commit -m "${msg}"
						git push -u origin master
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