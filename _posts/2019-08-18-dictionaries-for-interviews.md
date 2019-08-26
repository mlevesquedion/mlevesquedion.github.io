---
layout: post
title: "dictionaries-for-interviews"
---

# Essential Python Dictionaries (for Interviews, among other things)
---

When in a coding interview, the last thing you want to do is waste time and energy writing boilerplate code (which is probably why you're using Python in the first place). Read on to learn about two data structures from the `collections` module that will help you implement your solution faster, and maybe impress your interviewer with your knowledge of the standard library.

## defaultdict
---
Dictionaries are ubiquitous in Python. They are convenient, easy to use, and behave well when we ask them for a key that doesn't exist (throwing a `KeyError`, instead of returning `None` or some other nonsense). However, that also means we have to make sure a key is there before we try to modify its value :

```python
# d = dict()
if key not in d:
  d[key] = []
d[key].append(x)
```

Or even :

```python
# d = dict()
d.setdefault(key, []).append(x)
```

We can make the code much more readable by using a `defaultdict`:

```python
# d = defaultdict(list)
d[key].append(x)
```

The argument given to defaultdict's constructor is a zero-argument factory function used to initialize missing elements. If you wanted to count word frequencies in a text, you might use a `defaultdict(int)`. However, there is a more specialized data structure for such occasions...

## Counter
---
On the surface, `Counter` is just a `defauldict(int)`. However, it supports additional operations, such as returning the `most_common()` elements, and it can act as a multiset, meaning you can get the intersection, difference or union of two `Counters`. For example, you could find the total number of occurrences of each word across two texts using `Counter(text1) | Counter(text2)`.
