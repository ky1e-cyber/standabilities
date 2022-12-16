execute as @s[type=minecraft:player] store result score @s sa_hurt run data get entity @s HurtTime 1
execute as @s[type = minecraft:player] at @s run function standabilities:stands/timestop/player


execute if entity @s[type=minecraft:tnt] run data merge entity @s {Fuse:60s}
execute if entity @s[type=minecraft:tnt_minecart] run data merge entity @s {Fuse:60s}

execute unless entity @e[tag = sa_stopper] run function standabilities:stands/timestop/unfreeze