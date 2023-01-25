# Testing a rate

Trivial example of running a test of a dockerized application multiple times
accross various settings (passed as environmental files) and access their
success rates under various configuration.

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
