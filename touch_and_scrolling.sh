#!/bin/bash

id=$(xinput list | grep TouchPad | awk '{print substr($6, 4)}')

tap_id=$(xinput list-props $id | grep 'Tapping Enabled (' | awk '{print substr($4, 2, 3)}')

xinput set-prop $id $tap_id 1

scroll_id=$(xinput list-props $id | grep 'Natural Scrolling Enabled (' | awk '{print substr($5, 2, 3)}')

xinput set-prop $id $scroll_id 1

