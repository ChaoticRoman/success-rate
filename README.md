# Testing a rate

Trivial example of running tests of a dockerized application repeatedly
with various setting and access their success rate.

## Thing to be tested

There is a function `flaky_one()` that returns 0 and 1 with a configurable rate.
The rate is configured through environment variable from a `.env.*` file.

## Test

Testing should get that configurable rate back by running the test repeatadly
for various `.env.*` file. Brief report is printed out. Full reports are saved
in `_out/*` files. Try it:

```
make test
```
