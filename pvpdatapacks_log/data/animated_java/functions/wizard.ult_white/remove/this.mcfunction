execute if entity @s[tag=aj.wizard.ult_white.root] run function animated_java:wizard.ult_white/zzzzzzzz/remove/as_root
execute if entity @s[tag=!aj.wizard.ult_white.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:wizard.ult_white/remove/this ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]