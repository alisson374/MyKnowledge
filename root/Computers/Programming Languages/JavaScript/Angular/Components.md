## Structure

Components provide structure for organizing your project into easy-to-understand parts with clear responsibilities so that your code is maintainable and scalable. [[Pasted image 20240905204304.png|Here]] is an exemple of how a *Todo application* could be broken down into a tree of components.

Every component has the following core properties:
1. A `@Component`[decorator](https://www.typescriptlang.org/docs/handbook/decorators.html) that contains some configuration
2. An HTML template that controls what renders into the DOM
3. A [CSS selector](https://developer.mozilla.org/docs/Learn/CSS/Building_blocks/Selectors) that defines how the component is used in HTML
4. A TypeScript class with behaviors such as managing state, handling user input, or fetching data from a server.

Exemple on same file:

```ts
// todo-list-item.component.ts
@Component({
  standalone: true,
  selector: 'todo-list-item',
  template: `
    <li>(TODO) Read Angular Essentials Guide</li>
  `,
  styles: `
    li {
      color: red;
      font-weight: 300;
    }
  `,
})
export class TodoListItem {
  /* Component behavior is defined in here */
}
```

Exemple in separate files:
```ts
// todo-list-item.component.ts
@Component({
  standalone: true,
  selector: 'todo-list-item',
  templateUrl: './todo-list-item.component.html',
  styleUrl: './todo-list-item.component.css',
})
export class TodoListItem {
  /* Component behavior is defined in here */
}
```

## Using

One advantage of component architecture is that your application is modular. In other words, components can be used in other components.

To use a component, you need to:

1. Import the component into the file
2. Add it to the component's `imports` array
3. Use the component's selector in the `template`

Here's an example of a `TodoList` component importing the `TodoListItem` component from before:

```ts
// todo-list.component.ts
import {TodoListItem} from './todo-list-item.component.ts';
@Component({
  standalone: true,
  imports: [TodoListItem],
  template: `
    <ul>
      <todo-list-item></todo-list-item>
    </ul>
  `,
})
export class TodoList {}
```
