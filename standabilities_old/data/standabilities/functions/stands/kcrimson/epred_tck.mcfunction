effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:weakness 1 255 true
scoreboard players remove @s sa_predtime 1
execute if score @s sa_predtime matches 40 positioned as @e[tag = sa_predmarker] rotated as @s run tp @s ~ ~ ~ ~ ~
execute if score @s sa_predtime matches ..0 run function standabilities:stands/kcrimson/pred_end