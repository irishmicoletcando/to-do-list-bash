#!/bin/bash

TODO_FILE="todo.txt"
list_arr=( )

if [ ! -f "$TODO_FILE" ]; then
	touch "$TODO_FILE"
fi


# display list of tasks input
list(){
	if [ -s "$TODO_FILE" ]; then
		echo "To Do List for Today:"
		list_arr=()

		while IFS= read -r line; do
			list_arr+=("$line")
		done < "$TODO_FILE"

		for i in "${!list_arr[@]}"; do
			echo "$((i+1)). ${list_arr[$i]}"
		done
	else
		echo "No task for today!"
	fi
}

add() {
	read -p "Enter a task you would like to accomplish today: " user_input
	list_arr+=("$user_input")
	echo "$user_input" >> "$TODO_FILE"
	echo "Task added!"
}

remove() {
	list

	read -p "Which task you want to remove? Enter the number. " user_input
	
	if [[ ! "$user_input" =~ ^[0-9]+$ ]]; then
		echo "Invalid input. Enter n number."
		return
	fi

	index=$((user_input-1))
	
	if [[ $index -ge 0 && $index -lt ${#list_arr[@]} ]]; then	
		unset list_arr[$index]
		list_arr=("${list_arr[@]}")
	
		: > "$TODO_FILE"
		for task in "${list_arr[@]}"; do
			echo "$task" >> "$TODO_FILE"
		done

		echo "Task removed!"
	else 
		echo "Invalid number. Task not found"
	fi

	list	

}

if [ "$1" == "list" ]; then
	list
elif [ "$1" == "add" ]; then
	add
elif [ "$1" == "remove" ]; then
	remove
else
	echo "Enter commands {list | add <task> | remove} only"
fi
