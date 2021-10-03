#!/bin/bash

. data/tests/util.sh

test_user()
{
    if [[ $(getent passwd test) ]] && [[ -d /home/test ]]; then
        ok
    else
        fail
    fi
}


RES=0
run test_user "check that test user wasn't removed" || RES=1
exit $RES
