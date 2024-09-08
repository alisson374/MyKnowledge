## C Implementation
obs: É uma pilha para números inteiros
stack.h
```C
#pragma once
#include <stdbool.h>

typedef struct _node Node;
typedef struct _stack Stack;

Stack* stack_create();
void stack_destroy(Stack** ref_stack);
void stack_push(Stack* stack, int data);
void stack_pop(Stack* stack);
int stack_peek(Stack* stack);
bool stack_isEmpty(Stack* stack);
int stack_size(Stack* stack);
```

stack.c
```C
#include "stack.h"
#include <stdio.h>
#include <stdlib.h>

typedef struct _node {
  int data;
  struct _node* previous;
} Node;

typedef struct _stack {
  int size;
  Node* top;
} Stack;

Node* node_create(int data) {
  Node* newNode = (Node *)calloc(1, sizeof(Node));
  if (newNode != NULL) {
    // newNode->next = NULL;
    newNode->previous = NULL;
    newNode->data = data;
  } else {
    fprintf(stderr, "Indefined error creating the node");
    exit(EXIT_FAILURE);
  }

  return newNode;
}

Stack* stack_create() {
  Stack* newStack = (Stack *)calloc(1, sizeof(Stack));
  if (newStack != NULL) {
    newStack->top = NULL;
    newStack->size = 0;
  } else {
    fprintf(stderr, "Indefined error creating the stack");
    exit(EXIT_FAILURE);
  }

  return newStack;
}

void stack_destroy(Stack** ref_stack) {
  Stack* stack = *ref_stack;

  while (stack->size != 0) {
    stack_pop(stack);
  }

  free(*ref_stack);
  *ref_stack = NULL;
}

void stack_push(Stack *stack, int data) {
  Node* newNode = node_create(data);
  if (stack_isEmpty(stack)) {
    stack->top = newNode;
  } else {
    newNode->previous = stack->top;
    stack->top = newNode;
  }
  stack->size++;
}

void stack_pop(Stack* stack) {
  if (stack_isEmpty(stack)) {
    fprintf(stderr, "Stack is empty");
    exit(EXIT_FAILURE);
  } else {
    Node* oldTop = stack->top;
    stack->top = oldTop->previous;
    free(oldTop);
    oldTop = NULL;
  }
  stack->size--;
}
int stack_peek(Stack* stack) {
  if (stack_isEmpty(stack)) {
    fprintf(stderr, "Stack is empty");
    exit(EXIT_FAILURE);
  } else {
    return stack->top->data;
  }
}

bool stack_isEmpty(Stack* stack) {
  if (stack->size == 0) {
    return true;
  } else {
    return false;
  }
}

int stack_size(Stack* stack) { return stack->size; }
```

main.c
```C
#include "stack.h"
#include <stdio.h>
#include <stdbool.h>

int main(void) {
  Stack* stack = stack_create();

  // NULL <- 10 <- back
  stack_push(stack, 10);
  printf("top: %d\n", stack_peek(stack));
  printf("size: %d\n\n", stack_size(stack));
  
  // NULL <- 10 <- 15 <- back
  stack_push(stack, 15);
  printf("top: %d\n", stack_peek(stack));
  printf("size: %d\n\n", stack_size(stack));
  
  // NULL <- 10 <- 15 <- 40 <- back
  stack_push(stack, 40);
  printf("top: %d\n", stack_peek(stack));
  printf("size: %d\n\n", stack_size(stack));

  printf("After pop: \n");
  // NULL <- 10 <- 15 <- back
  stack_pop(stack);
  printf("top: %d\n", stack_peek(stack));
  printf("size: %d\n\n", stack_size(stack));

  // NULL <- 10 <- back
  stack_pop(stack);
  printf("top: %d\n", stack_peek(stack));
  printf("size: %d\n\n", stack_size(stack));
  
  stack_destroy(&stack);
  printf("stack: %p\n", stack);
  return 0;
}
```