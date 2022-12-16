execute positioned as @e[tag = sa_predmarker] rotated as @s run tp @s ~ ~ ~ ~ ~
tag @s remove sa_epred
kill @e[tag = sa_predmarker]
execute at @s run playsound minecraft:aria.stands.golden.kingcrimson.resume player @s ~ ~ ~ 0.5 1
scoreboard players set @s sa_cool_x 150