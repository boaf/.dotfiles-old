#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

[ ! -f $cli ] && exit;

echo "- Are you using a non-Apple keyboard (where CMD and ALT should be flipped)?"
read -e a
if [[ $a == "Y" || $a == "y" || $a == ""]]
then
    $cli set remap.commandL2optionL 1
    echo -n .
    $cli set remap.optionL2commandL 1
    echo -n .
fi

echo "- Do you want to set MouseButton4 to be used in combination with mouse movement for scrolling (i.e. you have a Logitech Trackman)?"
read -e a
if [[ $a == "Y" || $a == "y" || $a == ""]]
then
    $cli set remap.pointing_mousebutton4_to_middleclick_scrollwheel 1
    echo -n .
fi

echo "- Disable momentum scroll?"
read -e a
if [[ $a == "Y" || $a == "y" || $a == ""]]
then
    $cli set option.pointing_disable_momentum_scroll 1
    echo -n .
fi

echo 'Setting delay to 250ms and repeat rate to 20ms'
$cli set repeat.wait 20
echo -n .
$cli set repeat.initial_wait 250
echo -n .
echo
