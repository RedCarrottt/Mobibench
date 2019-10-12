#!/bin/bash
LIBRARY_PATH=/system_root/system/lib64
adb pull ${LIBRARY_PATH}/libicui18n.so
adb pull ${LIBRARY_PATH}/libicuuc.so
adb pull ${LIBRARY_PATH}/libutils.so
