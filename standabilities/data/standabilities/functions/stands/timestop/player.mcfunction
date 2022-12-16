execute at @e[tag = sa_ts_marker, sort=nearest, limit=1] as @s[distance=0.4..] run tp @s ~ ~ ~

effect give @s minecraft:mining_fatigue 1 255 true
effect give @s minecraft:weakness 1 255 true
effect give @s minecraft:blindness 2 255 true

execute if score @s sa_death_ts matches 1.. run tag @s remove sa_stopped
execute if entity @s[tag = !sa_stopped] as @e[tag = sa_ts_marker] at @s unless entity @a[tag = sa_stopped, distance = ..0.5] run kill @s