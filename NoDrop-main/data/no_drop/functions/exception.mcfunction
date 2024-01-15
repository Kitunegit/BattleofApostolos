#> no_drop:exception/
#
# @within no_drop:tick

# マクロ
    data modify entity @s PickupDelay set value 0s

    #declare tag no_drop.exception_item
    tag @s add no_drop.exception_item

    execute on origin at @s run tp @e[tag=no_drop.exception_item] ~ ~ ~
