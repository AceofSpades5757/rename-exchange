[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=red)](https://github.com/pre-commit/pre-commit)

# Python C Extension Puzzle

[YouTube Video](https://www.youtube.com/watch?v=Oe1ZxxwofKs)

Solving this puzzle.

# Issues

Had issues with importing. Went through [Python C Extension Tutorial](https://www.youtube.com/watch?v=HrEzCI3jIHw) to figure out what was missing.

By adding this block, the problem was solved. Couldn't find it clearly in the official documentation, but the video explained it, and it worked.

```
PyMODINIT_FUNC PyInit_rename_exchange(void) {
    return PyModule_Create(&module);
}
```
