#!/bin/bash

bind_button() {
    device_id=$1
    physical_button=$2
    logical_button_kind=$3
    logical_button_specifier=$4

    ratbagctl $device_id button $physical_button action set $logical_button_kind $logical_button_specifier
}


DEVICE_NAME="Logitech G502 X LIGHTSPEED"

PHY_BT_LEFT_CLICK="0"
PHY_BT_RIGHT_CLICK="1"
PHY_BT_MIDDLE_CLICK="2"
PHY_BT_SIDE_DOWN="3"
PHY_BT_DPI_SHIFT="4"
PHY_BT_SIDE_UP="5"
PHY_BT_SCROLL_LEFT="6"
PHY_BT_SCROLL_RIGHT="7"
PHY_BT_CENTER="8"
PHY_BT_SUB_UP="9"
PHY_BT_SUB_DOWN="10"

#                                           mouse code
LOG_BT_LEFT_CLICK="button 1"              # 1
LOG_BT_RIGHT_CLICK="button 2"             # 3
LOG_BT_MIDDLE_CLICK="button 3"            # 2
LOG_BT_WHEEL_UP="special wheel-up"        # 4
LOG_BT_WHEEL_DOWN="special wheel-down"    # 5
LOG_BT_WHEEL_LEFT="special wheel-left"    # 6
LOG_BT_WHEEL_RIGHT="special wheel-right"  # 7
LOG_BT_8="button 4"                       # 8
LOG_BT_9="button 5"                       # 9
LOG_BT_10="button 6"                      # 10
LOG_BT_11="button 7"                      # 11
LOG_BT_12="button 8"                      # 12
LOG_BT_13="button 9"                      # 13
LOG_BT_14="button 10"                     # 14
LOG_BT_15="button 11"                     # 15

device_id=`ratbagctl list | grep "$DEVICE_NAME" | awk -F: '{print $1}'`

echo $device_id

echo "Before"
ratbagctl $device_id info

ratbagctl $device_id profile 0 enable
ratbagctl $device_id profile 1 disable
ratbagctl $device_id profile 2 disable
ratbagctl $device_id profile 3 disable
ratbagctl $device_id profile 4 disable
ratbagctl $device_id profile active set 0

bind_button $device_id $PHY_BT_LEFT_CLICK $LOG_BT_LEFT_CLICK
bind_button $device_id $PHY_BT_RIGHT_CLICK $LOG_BT_RIGHT_CLICK
bind_button $device_id $PHY_BT_MIDDLE_CLICK $LOG_BT_MIDDLE_CLICK

bind_button $device_id $PHY_BT_SCROLL_LEFT $LOG_BT_8
bind_button $device_id $PHY_BT_SCROLL_RIGHT $LOG_BT_9

bind_button $device_id $PHY_BT_SIDE_UP $LOG_BT_10
bind_button $device_id $PHY_BT_SIDE_DOWN $LOG_BT_11
bind_button $device_id $PHY_BT_SUB_UP $LOG_BT_12
bind_button $device_id $PHY_BT_SUB_DOWN $LOG_BT_13

bind_button $device_id $PHY_BT_DPI_SHIFT $LOG_BT_14
bind_button $device_id $PHY_BT_CENTER $LOG_BT_15

ratbagctl $device_id rate set 1000

ratbagctl $device_id resolution 0 dpi set 800
ratbagctl $device_id resolution 1 dpi set 1200
ratbagctl $device_id resolution 2 dpi set 1600
ratbagctl $device_id resolution 3 dpi set 2400
# ratbagctl $device_id resolution 4 dpi set 3200
ratbagctl $device_id resolution 4 dpi set 2800

ratbagctl $device_id resolution active set 4
ratbagctl $device_id resolution default set 4

echo "After"
ratbagctl $device_id info
