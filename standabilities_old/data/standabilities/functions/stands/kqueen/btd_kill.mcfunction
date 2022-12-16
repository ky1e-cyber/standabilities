clear @s
tag @s remove sa_btd_exp
particle minecraft:lava ~ ~1 ~ 0 0 0 0.1 7 force
particle minecraft:crit ^ ^1 ^ 0 0 0 1 4 normal
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 3 normal

playsound entity.generic.explode ambient @a[distance = ..3] ~ ~ ~ 1 1.5

kill @s

particle minecraft:lava ~ ~ ~ 0 0 0 0.1 7 force
particle minecraft:crit ^ ^ ^ 0 0 0 1 4 normal
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 3 normal

playsound entity.generic.explode ambient @a[distance = ..3] ~ ~ ~ 1 1