#!/bin/bash

function provideInput() {
    echo "" ${READ[1]}
}
trap provideInput 1
vagrant --no-provision up
coproc read
wait ${READ_PID}
vagrant halt
