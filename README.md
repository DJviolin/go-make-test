# Make testfile for Go

shasum should return the same hash for every run (reproducable build)

```bash
$ make
$ shasum gomake # dd20335c3171186664485a7e48c7888a6310fb13
$ shasum gomake # dd20335c3171186664485a7e48c7888a6310fb13
```
