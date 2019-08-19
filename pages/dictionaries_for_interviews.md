# Special Python Dictionaries (for Interviews, among other things)

When in a coding interview, the last thing you want to do is waste time and energy writing boilerplate code (which is probably why you're using Python in the first place). Read on to learn about two data structures from the `collections` module that will help you implement your solution faster, and maybe impress your interviewer with your knowledge of the standard library.

## defaultdict

Dictionaries are ubiquitous in Python, and a staple in interview questions. Often times though, we end up writing boilerplate such as this :

```python
# d = dict()

if key not in d:
  d[key] = []
d[key].append(x)
```

Or even exotic things such as this :

```python
# d = dict()
d.setdefault(key, []).append(x)
```

We can simplify the code by using a `defaultdict`:

```python
# d = defaultdict(list)
d[key].append(x)
```

The argument given to defaultdict's constructor is a zero-argument factory function used to initialize missing elements. If you wanted to count word frequencies in a text, you might use a `defaultdict(int)`. However, there is a more specialized data structure for such occasions...

## Counter

On the surface, `Counter` is just a `defauldict(int)`. However, it supports additional operations, such as returning the `n` most common elements, and it can act as a `multiset`, meaning you can get the intersection, difference or union of two `Counters`. For example, you could find the total number of occurrences of each word across two texts using `Counter(text1) | Counter(text2)`.

### Bonus data structure : deque

What is wrong with the following piece of code, in terms of time complexity?

```python
def bfs(graph, start_node):
  seen = {start_node}
  queue = [start_node]
  while queue:
    current = queue.pop(0)
    for neighbor in graph[current]:
      if neighbor not in seen:
        queue.append(neighbor)
```

Before you proudly announce to your interviewer that this runs in O(n + m), recall that popping the first element from a Python `list` requires `|list|` operations. Therefore this code actually runs in O(n^2).

How can you fix this? Use `collections.deque`, which is implemented as a *linked list* and therefore has O(1) insertions and *removals* at both extremities. (the equivalent to `pop(0)` is simply `popleft()`, and there is also an `appendleft` method).

