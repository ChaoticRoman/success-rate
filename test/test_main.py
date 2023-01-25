import pytest

from flaky import main

def test_flaky_one():
    assert main.flaky_one() == 1
