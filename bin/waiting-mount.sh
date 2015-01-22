#!/bin/bash

MOUNT_POINT="${1}"

function provideInput() {
    echo "" ${READ[1]}
}
trap provideInput 1
mount "${MOUNT_POINT}"
echo "Mounted"
coproc read
wait ${READ_PID}
umount -l "${MOUNT_POINT}"
