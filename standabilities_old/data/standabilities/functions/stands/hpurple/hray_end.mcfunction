scoreboard players set @s sa_distance 51
particle minecraft:dust 1 0.2 0.7 1 ~ ~ ~ 0.2 1 0.2 1 10 force
execute align xyz run tp @s ~ ~ ~
playsound minecraft:entity.enderman.teleport player @a[distance = ..6] ~ ~ ~