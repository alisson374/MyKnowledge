## What is state?
Components let you neatly encapsulate responsibility for discrete parts of your application. For example, a `SignUpForm` component might need to keep track of whether the form is valid or not before allowing users to take a specific action. As a result, the various properties that a component needs to track is often referred to as "state."

## Define state
To define state, you use [class fields syntax](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Classes/Public_class_fields) inside of your component.

For example, using the `TodoListItem` component, create two properties that you want to track:

1. `taskTitle` — What the title of the task is
2. `isComplete` — Whether or not the task is complete

```ts
// todo-list-item.component.ts
@Component({ ... })
export class TodoListItem {  
	taskTitle = '';
	isComplete = false;
}
```

## Updating state
When you want to update state, this is typically accomplished by defining methods in the component class that can access the various class fields with the `this` keyword.
```ts
// todo-list-item.component.ts
@Component({ ... })
export class TodoListItem {
  taskTitle = '';
  isComplete = false;
  completeTask() {
    this.isComplete = true;
  }
  updateTitle(newTitle: string) {
    this.taskTitle = newTitle;
  }
}
```