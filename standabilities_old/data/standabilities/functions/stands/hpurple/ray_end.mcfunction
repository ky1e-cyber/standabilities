scoreboard players set @s sa_distance 21
playsound minecraft:entity.ender_eye.death player @a[distance = ..4] ~ ~ ~ 1.2
execute as @e[distance=..1.5, tag = !sa_hcaster] run effect give @s minecraft:glowing 4 1 true
execute as @e[distance=..1.5, tag = !sa_hcaster] run effect give @s minecraft:wither 2 1 true
execute as @e[distance=..1.5, tag=sa_standmodel] at @s run function standabilities:stands/hpurple/s_punch

particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.5 0.1 0.5 1 20 force

execute as @e[distance=..1.5, type= minecraft:item] run function standabilities:stands/hpurple/item