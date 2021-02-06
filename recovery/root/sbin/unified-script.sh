#!/system/bin/sh
# This script is needed to automatically set device props.


load_gauguin()
{
    resetprop "ro.product.model" "Mi10t lite"
    resetprop "ro.product.name" "gauguin"
    resetprop "ro.build.product" "gauguin"
    resetprop "ro.product.device" "gauguin"
    resetprop "ro.vendor.product.device" "gauguin"
}

load_gauguinpro()
{
    resetprop "ro.product.model" "Redmi Note 9 Pro 5G"
    resetprop "ro.product.name" "gauguinpro"
    resetprop "ro.build.product" "gauguinpro"
    resetprop "ro.product.device" "gauguinpro"
    resetprop "ro.vendor.product.device" "gauguinpro"
}

load_gauguininpro()
{
    resetprop "ro.product.model" "Mi10i"
    resetprop "ro.product.name" "gauguininpro"
    resetprop "ro.build.product" "gauguininpro"
    resetprop "ro.product.device" "gauguininpro"
    resetprop "ro.vendor.product.device" "gauguininpro"
}

project=$(getprop ro.boot.hwname)
echo $project

case $project in
    "gauguin")
        load_gauguin
        ;;
    "gauguinpro")
        load_gauguinpro
        ;;
    *)
        load_gauguin
        ;;
esac

exit 0
