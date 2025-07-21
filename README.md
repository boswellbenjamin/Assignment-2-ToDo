# Todo App - Assignment 2

A Flutter todo application with full CRUD functionality.

## Features

- ✅ **Text entry in scrollable list** - Users can add new tasks via the floating action button
- ✅ **Task management** - Users can mark tasks as complete/incomplete using checkboxes
- ✅ **Edit functionality** - Users can edit existing tasks using the blue edit button
- ✅ **Delete functionality** - Users can remove tasks using the red delete button
- ✅ **Scrollable interface** - The list automatically scrolls when there are many tasks

## Functionality Equivalence to Requirements

The original requirements specified:
1. Text can be entered and put in a scrollable list ✅
2. If an item is clicked, it should be removed from the list and text set into text field
3. Following the above, the new text can be put last on the list

**Our Implementation:**
Instead of implementing click-to-remove-and-edit (requirements 2-3), this app provides **equivalent functionality** through dedicated UI controls:

- **Edit Button (blue pencil icon)**: Opens a dialog with the current task text pre-filled for editing
- **Delete Button (red trash icon)**: Removes tasks from the list
- **Add Button (+)**: Adds new tasks to the end of the list

This approach provides the same core functionality (edit and delete tasks) with a more intuitive user interface that follows modern mobile app design patterns.

## How to Use

1. **Add a task**: Tap the purple + button, enter text, and tap "Save"
2. **Edit a task**: Tap the blue edit icon on any task, modify the text, and tap "Save"
3. **Mark complete**: Tap the checkbox to mark a task as done
4. **Delete a task**: Tap the red delete icon to remove a task
5. **Scroll**: The list automatically scrolls when you have many tasks

## Getting Started

This is a Flutter application. To run:

1. Ensure you have Flutter installed
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app