#!/bin/bash
cd /opt/sublime_text || exit
printf '\x48\x31\xC0\xC3'                 | dd of=sublime_text bs=1 seek=$((0x00385492)) conv=notrunc
printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0037B675)) conv=notrunc
printf '\x90\x90\x90\x90\x90'             | dd of=sublime_text bs=1 seek=$((0x0037B68B)) conv=notrunc
printf '\x48\x31\xC0\x48\xFF\xC0\xC3'     | dd of=sublime_text bs=1 seek=$((0x00386F4F)) conv=notrunc
printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x00385156)) conv=notrunc
printf '\xC3'                             | dd of=sublime_text bs=1 seek=$((0x0036EF50)) conv=notrunc
