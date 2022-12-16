effect give @s minecraft:slowness 1 255 true
effect give @s minecraft:weakness 1 128 true
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:mining_fatigue 1 255 true
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 1 0 0 2 normal

execute unless entity @s[tag = sa_fog] run tag @s remove sa_fogged