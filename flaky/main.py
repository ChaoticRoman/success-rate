from os import environ
from random import random

rate = float(environ.get("RATE", 0.5))

def flaky_one(rate=rate):
    if not random() < rate:
        raise RuntimeError("Nope")
    return 1


if __name__ == "__main__":
    print(flaky_one())
