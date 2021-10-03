#!/bin/bash

. data/tests/util.sh

test_account_expired()
{
    if [[ x"$(getent shadow test | cut -d : -f 8)" == "x0" ]]; then
        ok
    else
        fail
    fi
}


RES=0
run test_account_expired "check for account preventive measures" || RES=1
exit $RES
