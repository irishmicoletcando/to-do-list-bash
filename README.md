# To-Do List Project

A simple command-line to-do list manager written in Bash. This script allows you to add, display, and remove tasks from your to-do list.

## Features

- **Add a Task**: Add a new task to your list.
- **Display Tasks**: View the list of current tasks.
- **Remove a Task**: Remove a completed task from your list.

## Usage

### 1. Add a Task

To add a task to your list, run:

```bash
./to-do-list.sh add
```

You will be prompted to enter the task description. The task will be added to your to-do list.

### 2. Display the List of Tasks

To view your current to-do list, run:

```bash
./to-do-list.sh list
```

This will display all tasks with their corresponding numbers.

### 3. Remove a Finished Task

To remove a task, run:

```bash
./to-do-list.sh remove
```

You will be prompted to enter the number of the task you wish to remove. The task will be deleted from your list.

## Script Details

- **File Name**: `to-do-list.sh`
- **Dependencies**: None (requires Bash)

## Example

1. **Add Tasks**:

   ```bash
   ./to-do-list.sh add
   ```

   Enter task description: `Clean the room`

   ```bash
   ./to-do-list.sh add
   ```

   Enter task description: `Take a bath`
   
2. **Display Tasks**:

   ```bash
   ./to-do-list.sh list
   ```

   Output:
   ```
   To Do List for Today:
   1. Clean the room
   2. Take a bath
   ```

3. **Remove a Task**:

   ```bash
   ./to-do-list.sh remove
   ```

   Enter the number of the task to remove: `1`

   The task "Clean the room" will be removed from the list.

## Contributing

Feel free to open issues or submit pull requests if you have suggestions or improvements.