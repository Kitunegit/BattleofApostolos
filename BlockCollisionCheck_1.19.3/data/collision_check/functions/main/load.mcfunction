#> collision_check:main/load
#
#

scoreboard objectives add collision_check dummy
execute unless score #10000 collision_check matches 10000 run function collision_check:main/load_once