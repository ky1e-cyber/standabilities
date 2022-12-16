execute at @s if entity @p[tag = sa_bst_active, distance = 56..] run setblock ~ ~ ~ air
execute at @s unless block ~ ~ ~ minecraft:stone_pressure_plate run tag @a[tag = sa_bst_active] remove sa_bst_active
execute at @s unless block ~ ~ ~ minecraft:stone_pressure_plate run kill @s
execute at @s if block ~ ~ ~ minecraft:stone_pressure_plate[powered=true] run tag @e[type=!#standabilities:main/nonliving, tag = !sa_bst_active, distance=..1] add sa_bst_target

execute at @s if block ~ ~ ~ minecraft:stone_pressure_plate[powered=true] as @e[type=!#standabilities:main/nonliving, tag = !sa_bst_active, distance=..1] run function standabilities:stands/bastet/target