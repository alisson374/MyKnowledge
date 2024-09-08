## C Implementation
obs: É uma fila para números inteiros
queue.h
```C
#pragma once
#include <stdbool.h>

typedef struct node Node;
typedef struct queue Queue;

Queue *queue_create();
void queue_destroy(Queue **queue);
void queue_enqueue(Queue *queue, int data);
void queue_dequeue(Queue *queue);
bool queue_isEmpty(Queue *queue);
int queue_peek(Queue *queue);
int queue_size(Queue *queue);
void queue_list(Queue* queue);
```

queue.c
```C
#include "queue.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct node {
  int data;
  struct node *next;
} Node;

typedef struct queue {
  Node *begin;
  Node *end;
  int size;
} Queue;

Node *node_create() {
  Node *newNode = (Node *)calloc(1, sizeof(Node));
  if (newNode != NULL) {
    newNode->next = NULL;
  }

  return newNode;
}

Queue *queue_create() {
  Queue *newList = (Queue *)calloc(1, sizeof(Queue));

  if (newList != NULL) {
    newList->begin = NULL;
    newList->end = NULL;
    newList->size = 0;
  } else {
    // error
  }

  return newList;
}

bool queue_isEmpty(Queue *queue) {
  if (queue->size == 0) {
    return true;
  } else {
    return false;
  }
}

void queue_enqueue(Queue *queue, int data) {
  Node *newNode = node_create();
  newNode->data = data;

  if (queue_isEmpty(queue)) {
    queue->begin = newNode;
    queue->end = newNode;
    newNode->next = NULL;
  } else {
    newNode->next = NULL;
    Node *lastNode = queue->end;
    lastNode->next = newNode;
    queue->end = newNode;
  }

  queue->size++;
}

void queue_dequeue(Queue *queue) {
  Node *newBegin = queue->begin->next;
  Node *oldBegin = queue->begin;
  free(oldBegin);
  oldBegin = NULL;
  queue->size--;
  queue->begin = newBegin;
}

int queue_peek(Queue *queue) {
  Node *firstIn = queue->begin;
  return firstIn->data;
}

void queue_destroy(Queue **queue) {
  Queue *q = *queue;

  while (!queue_isEmpty(q)) {
    queue_dequeue(q);
  }

  free(q);
  *queue = NULL;
}

int queue_size(Queue *queue) { return queue->size; }

void queue_list(Queue* queue) {
    if(queue_isEmpty(queue)) {
        printf("stack vazio!\n");
        return;
    }

    Node* aux = queue->begin;
    printf("\nBegin->");
    while (aux != NULL) {
        printf(" %d", aux->data);

        if (aux->next != NULL)
            printf(" <->");
        else
            printf(" <- End\n");

        aux = aux->next;
    }
}
```

main.c
```C
#include <stdio.h>
#include "queue.h"

int main(void) {
	Queue* queue = queue_create();
	printf("empty: %d \n\n", queue_isEmpty(queue));
	queue_enqueue(queue, 10);
	queue_enqueue(queue, 15);
	queue_enqueue(queue, 40);
  queue_list(queue);
	printf("%d", queue_peek(queue));
	return 0;
}


```